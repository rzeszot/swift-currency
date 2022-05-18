public struct Currency {
    public enum FormatError: Error {
        case colon
        case scale
    }

    public let code: String
    public let scale: UInt?

    public init(code: String, scale: UInt? = nil) {
        self.code = code.uppercased()
        self.scale = scale
    }

    init(string: String) throws {
        if string.contains(":") {
            let parts = string.split(separator: ":", maxSplits: 2, omittingEmptySubsequences: true)
            guard parts.count >= 2 else { throw FormatError.colon }

            let code = String(parts[0])
            let scale = try parse(scale: parts[1])

            self.init(code: code, scale: scale)
        } else {
            self.init(code: string)
        }
    }
}

private func parse(scale value: Substring) throws -> UInt? {
    let number = UInt(value)
    guard number.map(String.init) == String(value) else { throw Currency.FormatError.scale }
    return number
}
