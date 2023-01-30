// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MonoDocu",
    platforms: [
        .iOS(.v14),
        .watchOS(.v8)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Utility",
            targets: ["Utility"]),
        .library(
            name: "Logger",
            targets: ["Logger"]),
        .library(
            name: "Observing",
            targets: ["Observing"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.

        // Utility
        .target(
            name: "Utility",
            dependencies: [],
            path: "Utility/Utility"
        ),

        // Logger
        .target(
            name: "Logger",
            dependencies: [],
            path: "Logger/Logger"
        ),

        // Observing
        .target(
            name: "Observing",
            dependencies: [.target(name: "Utility")],
            path: "Observing/Observing"
        )
    ]
)
