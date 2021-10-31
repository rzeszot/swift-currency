import XCTest
import Currency

final class CurrencyCodableTests: XCTestCase {

  // MARK: - Codable

  func test_decodable() throws {
    let json = """
      {
        "currency": "BTC"
      }
      """

    let sut: SomeObject = try decode(json)

    XCTAssertEqual(sut.currency.code, "BTC")
    XCTAssertEqual(sut.currency.minor, nil)
  }

  func test_decodable_default_minor_unit() throws {
    let json = """
      {
        "currency": "BHD:2"
      }
      """

    let sut: SomeObject = try decode(json)

    XCTAssertEqual(sut.currency.code, "BHD")
    XCTAssertEqual(sut.currency.minor, 2)
  }

  func test_decodable_non_default_minor_unit() throws {
    let json = """
      {
        "currency": "BHD:3"
      }
      """

    let sut: SomeObject = try decode(json)

    XCTAssertEqual(sut.currency.code, "BHD")
    XCTAssertEqual(sut.currency.minor, 3)
  }

  func test_decodable_invalid_format_1() throws {
    let json = """
      {
        "currency": "ABC:"
      }
      """

    XCTAssertThrowsError(try decode(json) as SomeObject) { error in
      XCTAssertEqual(error as? Currency.FormatError, Currency.FormatError.colon)
    }
  }

  func test_decodable_invalid_format_2() throws {
    let json = """
      {
        "currency": "ABC::::"
      }
      """

    XCTAssertThrowsError(try decode(json) as SomeObject) { error in
      XCTAssertEqual(error as? Currency.FormatError, Currency.FormatError.colon)
    }
  }

  func test_decodable_invalid_format_3() throws {
    let json = """
      {
        "currency": "ABC:hello"
      }
      """

    XCTAssertThrowsError(try decode(json) as SomeObject) { error in
      XCTAssertEqual(error as? Currency.FormatError, Currency.FormatError.minor)
    }
  }

  // MARK: - Encodable

  func test_encodable() throws {
    let object = SomeObject(currency: Currency(code: "PLN"))

    let sut = try encode(object)

    XCTAssertEqual(sut, """
      {
        "currency" : "PLN"
      }
      """)
  }

  func test_encodable_default_minor_unit() throws {
    let object = SomeObject(currency: Currency(code: "PLN", minor: 2))

    let sut = try encode(object)

    XCTAssertEqual(sut, """
      {
        "currency" : "PLN"
      }
      """)
  }

  func test_encodable_non_default_minor_unit() throws {
    let object = SomeObject(currency: .bhd)

    let sut = try encode(object)

    XCTAssertEqual(sut, """
      {
        "currency" : "BHD:3"
      }
      """)
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
