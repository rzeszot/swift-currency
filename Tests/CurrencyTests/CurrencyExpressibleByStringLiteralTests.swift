import XCTest
import Currency

final class CurrencyExpressibleByStringLiteralTests: XCTestCase {

  func test_expressible_by_literal_1() {
    let sut: Currency = "USD"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.minor, nil)
  }

  func test_expressible_by_literal_2() {
    let sut: Currency = "USD:2"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.minor, 2)
  }

  func test_expressible_by_literal_3() {
    let sut: Currency = "USD:5"

    XCTAssertEqual(sut.code, "USD")
    XCTAssertEqual(sut.minor, 5)
  }

}
