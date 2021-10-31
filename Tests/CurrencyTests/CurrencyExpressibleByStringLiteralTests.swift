import XCTest
import Currency

final class CurrencyExpressibleByStringLiteralTests: XCTestCase {

  func test_expressible_by_literal() {
    let sut: Currency = "USD"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.scale, nil)
  }

  func test_expressible_by_literal_with_default_scale() {
    let sut: Currency = "USD:2"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.scale, 2)
  }

  func test_expressible_by_literal_with_non_default_scale() {
    let sut: Currency = "USD:5"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.scale, 5)
  }

}
