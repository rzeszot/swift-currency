import Foundation

extension String {
  public init(_ currency: Currency) {
    self = currency.code
  }
}
