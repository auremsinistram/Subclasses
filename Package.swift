// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Subclasses",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Subclasses",
            targets: [
                "Subclasses"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/auremsinistram/PropertyWrappers.git",
            from: .init(0, 2, 0)
        )
    ],
    targets: [
        .target(
            name: "Subclasses",
            dependencies: [
                .product(
                    name: "PropertyWrappers"
                )
            ]
        )
    ]
)
