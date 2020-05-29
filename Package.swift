// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "PythonKit",
    products: [
        .executable(
            name: "PythonTool",
            targets: ["PythonTool"]
        ),
        .library(
            name: "PythonKit",
            targets: ["PythonKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/kongzii/LoggerKit.git", .exact("0.0.0")),
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.0.1")),
    ],
    targets: [
        .target(
            name: "PythonTool",
            dependencies: ["LoggerKit", "PythonKit", .product(name: "ArgumentParser", package: "swift-argument-parser")],
            path: "PythonTool"
        ),
        .target(
            name: "PythonKit",
            path: "PythonKit"
        ),
        .testTarget(
            name: "PythonKitTests",
            dependencies: ["PythonKit"]
        ),
    ]
)
