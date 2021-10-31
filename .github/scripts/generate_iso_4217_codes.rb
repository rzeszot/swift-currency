#!/usr/bin/env ruby
require 'net/http'
require 'nokogiri'
require 'time'
require 'byebug'

#

URL = 'https://www.six-group.com/dam/download/financial-information/data-center/iso-currrency/amendments/lists/list_one.xml'
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

currencies.each do |currency|
  content = <<EOS
// This file was automatically generated and should not be edited.

extension Currency {
  /// #{currency.name} (#{currency.alphabetic_code})
  public static var \`#{currency.alphabetic_code.downcase}\`: Self {
    .init(code: "#{currency.alphabetic_code}", minor: #{currency.minor_unit})
  }
}
EOS

  path = File.join(OUTPUT_PATH, "#{currency.alphabetic_code}.swift")
  File.write(path, content)
end
