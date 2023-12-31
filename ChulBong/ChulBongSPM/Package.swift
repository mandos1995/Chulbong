// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChulBongSPM",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ChulBongSPM",
            type: .static,
            targets: ["ChulBongSPM"]),
        .library(
            name: "CBLoginSPM",
            type: .static,
            targets: ["CBLoginSPM"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ChulBongSPM",
            dependencies: ["CBLoginSPM"]
        ),
        .testTarget(
            name: "ChulBongSPMTests",
            dependencies: ["ChulBongSPM"]),
        
        // Login
        .target(name: "CBLoginSPM")
    ]
)
