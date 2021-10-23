// swiftlint:disable identifier_name

import XCTest
import Currency

final class CurrencyTests: XCTestCase {

  // MARK: - ExpressibleByStringLiteral

  func test_expressible_by_literal() {
    let sut: Currency = "USD"

    XCTAssertEqual(String(sut), "USD")
  }

  // MARK: - Codable

  func test_decodable() throws {
    let json = """
      {
        "currency": "BTC"
      }
      """

    let sut: SomeObject = try decode(json)

    XCTAssertEqual(String(sut.currency), "BTC")
  }

  func test_encodable() throws {
    let object = SomeObject(currency: Currency(code: "PLN"))

    let sut = try encode(object)

    XCTAssertEqual(sut, """
      {
        "currency" : "PLN"
      }
      """)
  }

  // MARK: - Equatable

  func test_equatable() {
    let a = Currency(code: "EUR")
    let b = Currency(code: "EUR")
    let c = Currency(code: "USD")

    XCTAssertEqual(a, b)
    XCTAssertNotEqual(a, c)
  }

  // MARK: - String+Currency

  func test_convertion_to_string() {
    let euro = Currency(code: "EUR")
    let sut = String(euro)

    XCTAssertEqual(sut, "EUR")
  }

  // MARK: - Helpers

  private func decode<T: Decodable>(_ string: String) throws -> T {
    let data = string.data(using: .utf8)!
    let decoder = JSONDecoder()

    return try decoder.decode(T.self, from: data)
  }

  private func encode<T: Encodable>(_ value: T) throws -> String {
    let encoder = JSONEncoder()
    encoder.outputFormatting = [.prettyPrinted, .sortedKeys]

    let data = try encoder.encode(value)

    return String(data: data, encoding: .utf8) ?? ""
  }
}
