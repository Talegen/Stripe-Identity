// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "stripe_identity_plugin",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "stripe-identity-plugin", targets: ["stripe_identity_plugin"])
    ],
    dependencies: [
        // Supplied by the Flutter tool at build time under the generated .packages directory.
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Official SwiftPM mirror of the Stripe iOS SDK; the CocoaPods podspec tracks the same versions.
        .package(url: "https://github.com/stripe/stripe-ios-spm", from: "26.12.1")
    ],
    targets: [
        .target(
            name: "stripe_identity_plugin",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "StripeIdentity", package: "stripe-ios-spm")
            ]
        )
    ]
)
