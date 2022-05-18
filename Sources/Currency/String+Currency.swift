public extension String {
    init(_ currency: Currency) {
        self = currency.code
    }
}
