import XCTest
import Currency

final class CurrencyTests: XCTestCase {

  func test_init_downcase() {
    let sut = Currency(code: "eur")

    XCTAssertEqual(String(sut), "EUR")
  }

  func test_init_upcase() {
    let sut = Currency(code: "EUR")

    XCTAssertEqual(String(sut), "EUR")
  }

}
