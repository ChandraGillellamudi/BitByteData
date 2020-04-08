// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "BitByteData",
    products: [
        .library(
            name: "BitByteData",
            targets: ["BitByteData"])
    ],
    targets: [
        .target(name: "BitByteData", path: "Sources"),
        .testTarget(name: "BitByteDataTests", dependencies: ["BitByteData"]),
        .testTarget(name: "BitByteDataBenchmarks", dependencies: ["BitByteData"])
    ],
    swiftLanguageVersions: [4]
)
