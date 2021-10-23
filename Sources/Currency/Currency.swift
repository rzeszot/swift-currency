public struct Currency {
  let code: String

  public init(code: String) {
    self.code = code
  }
}

extension Currency: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self.init(code: value)
  }
}

extension Currency: Codable {
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let string = try container.decode(String.self)

    self.init(code: string)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(code)
  }
}

extension Currency: Equatable {
  public static func == (lhs: Self, rhs: Self) -> Bool {
    lhs.code == rhs.code
  }
}

extension Currency: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(code)
  }
}
