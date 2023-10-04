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
            name: "CBCommonSPM",
            type: .static,
            targets: ["CBCommonSPM"]),
        .library(
            name: "CBLoginSPM",
            type: .static,
            targets: ["CBLoginSPM"]),
        .library(
            name: "CBMapSPM",
            type: .static,
            targets: ["CBMapSPM"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.2.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.15.0"),
        .package(url: "https://github.com/kakao-mapsSDK/KakaoMapsSDK-SPM", from: "2.5.0")
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ChulBongSPM",
            dependencies: ["CBLoginSPM", "CBMapSPM"]
        ),
        .testTarget(
            name: "ChulBongSPMTests",
            dependencies: ["ChulBongSPM"]
        ),
        .target(
            name: "CBCommonSPM",
            dependencies: [
                .product(
                    name: "ComposableArchitecture",
                    package: "swift-composable-architecture"
                )
            ]
        ),
        .target(
            name: "CBLoginSPM",
            dependencies: [
                "CBCommonSPM",
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk")
            ]
        ),
        .target(
            name: "CBMapSPM",
            dependencies: [
                .product(name: "KakaoMapsSDK_SPM", package: "KakaoMapsSDK-SPM")
            ]
        )
    ]
)
