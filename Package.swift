// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "Currency",
  products: [
    .library(name: "Currency", targets: ["Currency"])
  ],
  targets: [
    .target(name: "Currency"),
    .testTarget(name: "CurrencyTests", dependencies: ["Currency"])
  ]
)
