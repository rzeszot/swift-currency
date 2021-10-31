public struct Currency {

  let code: String
  let minor: UInt?

  public init(code: String, minor: UInt? = nil) {
    self.code = code.uppercased()
    self.minor = minor
  }

}
