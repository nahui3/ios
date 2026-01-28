// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NAHUI",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "NAHUI",
            targets: ["NAHUI"]
        )
    ],
    targets: [
        .target(
            name: "NAHUI",
            path: "Sources/NAHUI"
        ),
        .testTarget(
            name: "NAHUITests",
            dependencies: ["NAHUI"],
            path: "Tests/NAHUITests"
        )
    ]
)

