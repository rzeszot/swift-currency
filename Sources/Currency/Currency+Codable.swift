extension Currency: Codable {

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let string = try container.decode(String.self)

    try self.init(string: string)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    var string = code

    if let minor = minor, minor != 2 {
      string += ":\(minor)"
    }

    try container.encode(string)
  }

}
