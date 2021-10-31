import XCTest
import Currency

final class CurrencyHashable: XCTestCase {

  func test_hashable() {
    var sut = Hasher()
    Currency(code: "EUR").hash(into: &sut)

    var result = Hasher()
    "EUR".hash(into: &result)

    XCTAssertEqual(sut.finalize(), result.finalize())
  }

}
