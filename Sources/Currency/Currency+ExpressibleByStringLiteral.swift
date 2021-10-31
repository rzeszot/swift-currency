extension Currency: ExpressibleByStringLiteral {

  public init(stringLiteral value: String) {
    try! self.init(string: value)
  }

}
