// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CollectionAlgorithms",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(name: "CollectionAlgorithms", targets: ["CollectionAlgorithms"])
    ],
    targets: [
        .target(name: "CollectionAlgorithms", path: "Sources/CollectionAlgorithms"),
        .testTarget(name: "CollectionAlgorithmsTests", dependencies: ["CollectionAlgorithms"], path: "Tests/CollectionAlgorithmsTests")
    ]
)
