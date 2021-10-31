public struct Currency {

  let code: String

  public init(code: String) {
    self.code = code.uppercased()
  }

}
