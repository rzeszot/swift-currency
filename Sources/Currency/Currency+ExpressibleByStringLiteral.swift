extension Currency: ExpressibleByStringLiteral {

  public init(stringLiteral value: String) {
    self.init(code: value)
  }

}
