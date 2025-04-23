// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "InfiniteImageCarousellView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "InfiniteImageCarousellView",
            targets: ["InfiniteImageCarousellView"]
        ),
    ],
    targets: [
        .target(
            name: "InfiniteImageCarousellView",
            resources: [
                .process("Resources")  // Correct folder name
            ]
        ),
    ]
)

