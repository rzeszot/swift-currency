extension Currency: Equatable {

  public static func == (lhs: Self, rhs: Self) -> Bool {
    lhs.code == rhs.code
  }

}
