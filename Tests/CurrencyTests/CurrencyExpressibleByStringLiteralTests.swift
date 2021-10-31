import XCTest
import Currency

final class CurrencyExpressibleByStringLiteralTests: XCTestCase {

  func test_expressible_by_literal() {
    let sut: Currency = "USD"

    XCTAssertEqual(String(sut), "USD")
  }

}
