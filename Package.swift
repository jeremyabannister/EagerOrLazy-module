// swift-tools-version: 5.7

///
import PackageDescription

///
let package = Package(
    name: "EagerOrLazy-module",
    products: [
        
        ///
        .library(
            name: "EagerOrLazy-module",
            targets: ["EagerOrLazy-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ProperValueType-module",
            from: "0.1.0"
        )
    ],
    targets: [
        
        ///
        .target(
            name: "EagerOrLazy-module",
            dependencies: [
                "ProperValueType-module",
            ]
        ),
        
        ///
        .testTarget(
            name: "EagerOrLazy-tests",
            dependencies: [
                "EagerOrLazy-module",
            ]
        ),
    ]
)
