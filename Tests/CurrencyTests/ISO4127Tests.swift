import Currency
import XCTest

final class ISO4127Tests: XCTestCase {
    func test_try() {
        let sut = Currency.try

        XCTAssertEqual(sut.code, "TRY")
        XCTAssertEqual(sut.scale, 2)
    }
}
