public struct Currency {

  public enum FormatError: Error {
    case colon
    case minor
  }

  public let code: String
  public let minor: UInt?

  public init(code: String, minor: UInt? = nil) {
    self.code = code.uppercased()
    self.minor = minor
  }

  init(string: String) throws {
    if string.contains(":") {
      let parts = string.split(separator: ":", maxSplits: 2, omittingEmptySubsequences: true)
      guard parts.count >= 2 else { throw FormatError.colon }

      let code = String(parts[0])
      let minor = try parse(minor: parts[1])

      self.init(code: code, minor: minor)
    } else {
      self.init(code: string)
    }
  }

}

private func parse(minor value: Substring) throws -> UInt? {
  let number = UInt(value)
  guard number.map(String.init) == String(value) else { throw Currency.FormatError.minor }
  return number
}
