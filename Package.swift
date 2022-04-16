// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import AppKit

let package = Package(
    name: "Permesso",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .exact("1.0.2")),
        .package(url: "https://github.com/JohnSundell/Files", .exact("4.2.0")),
        .package(url: "https://github.com/JohnSundell/ShellOut", .exact("2.3.0")),
        .package(url: "https://github.com/tuist/XcodeProj", .exact("8.7.1"))
    ],
    targets: [
        .target(
            name: "permesso-core",
            dependencies: [
                "Files",
                "ShellOut",
                "XcodeProj"
            ]
        ),
        .executableTarget(
            name: "permesso",
            dependencies: [
                "permesso-core",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .testTarget(
            name: "PermessoTests",
            dependencies: ["permesso-core"]
        ),
    ]
)
