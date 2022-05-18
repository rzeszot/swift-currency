extension Currency: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(code)
    }
}
