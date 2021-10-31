import XCTest
import Currency

// swiftlint:disable identifier_name

final class CurrencyEquatableTests: XCTestCase {

  // MARK: - Equatable

  func test_equatable() {
    let a = Currency(code: "EUR")
    let b = Currency(code: "EUR")
    let c = Currency(code: "USD")

    XCTAssertEqual(a, b)
    XCTAssertNotEqual(a, c)
  }

}
