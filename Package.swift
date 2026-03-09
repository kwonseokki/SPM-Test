// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM-Test",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "SPM-Test-Dynamic", targets: ["SPM-Test"]),
        .library(name: "SPM-Test-Dynamic", type: .dynamic, targets: ["SPM-Test"]),
        .library(name: "SPM-Test-Static", type: .static, targets: ["SPM-Test"])
    ],
    dependencies: [.package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0")],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SPM-Test",
            resources: [
                .copy("Resources")                
            ]
        ),
        .testTarget(
            name: "SPM-TestTests",
            dependencies: ["SPM-Test"]
        ),
    ],
)
