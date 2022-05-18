#!/usr/bin/env ruby
require 'net/http'
require 'nokogiri'
require 'time'

#

URL = 'https://www.six-group.com/dam/download/financial-information/data-center/iso-currrency/lists/list_one.xml'
OUTPUT_PATH = 'Sources/Currency/ISO-4217'

#

Currency = Struct.new(:entity, :name, :alphabetic_code, :numeric_code, :minor_unit)

#

def fetch(url)
  uri = URI.parse(url)
  Net::HTTP.get(uri)
end

xml = Nokogiri.XML(fetch(URL))

published_at = Time.parse(xml.xpath('//ISO_4217').attribute('Pblshd').value)
currencies = xml.css('CcyNtry').map do |node|
  entity = node.css('CtryNm').text
  name = node.css('CcyNm').text
  alphabetic_code = node.css('Ccy').text
  numeric_code = node.css('CcyNbr').text
  minor_unit = node.css('CcyMnrUnts').text

  Currency.new(entity, name, alphabetic_code, numeric_code, minor_unit)
end
.uniq { |currency| currency.numeric_code }

#
#
#

Dir
  .entries(OUTPUT_PATH)
  .select do |path|
    path.end_with?('.swift')
  end
  .each do |path|
    File.delete(File.join(OUTPUT_PATH, path))
  end

#
#
#

currencies.reject! do |currency|
  currency.alphabetic_code.start_with?('X') || currency.numeric_code.empty?
end

#
#
#

WRAP_CODES = ['try']

def normalize(code)
  if WRAP_CODES.include?(code)
    "\`#{code}\`"
  else
    code
  end
end

currencies.each do |currency|
  content = <<EOS
// This file was automatically generated and should not be edited.

public extension Currency {
    /// #{currency.name} (#{currency.alphabetic_code})
    static var #{normalize(currency.alphabetic_code.downcase)}: Self {
        .init(code: "#{currency.alphabetic_code}", scale: #{currency.minor_unit})
    }
}
EOS

  path = File.join(OUTPUT_PATH, "#{currency.alphabetic_code}.swift")
  File.write(path, content)
end

#
#
#

content = ""
content += <<EOS
import Currency
import XCTest

final class ISO4127Tests: XCTestCase {
EOS

content += currencies.map do |currency|
  <<EOS
    func test_#{currency.alphabetic_code.downcase}() {
        let sut = Currency.#{currency.alphabetic_code.downcase}

        XCTAssertEqual(sut.code, "#{currency.alphabetic_code}")
        XCTAssertEqual(sut.scale, #{currency.minor_unit})
    }
EOS
end.join("\n")

content += <<EOS
}
EOS

File.write('Tests/CurrencyTests/ISO4127Tests.swift', content)
