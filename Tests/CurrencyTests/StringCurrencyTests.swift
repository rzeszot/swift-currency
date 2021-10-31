import XCTest
import Currency

final class StringCurrencyTests: XCTestCase {

  func test_convertion_to_string() {
    let euro = Currency(code: "EUR")
    let sut = String(euro)

    XCTAssertEqual(sut, "EUR")
  }

}
