// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorGpsEnableIos",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CapacitorGpsEnableIos",
            targets: ["capacitorGpsEnableIosPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "capacitorGpsEnableIosPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/capacitorGpsEnableIosPlugin"),
        .testTarget(
            name: "capacitorGpsEnableIosPluginTests",
            dependencies: ["capacitorGpsEnableIosPlugin"],
            path: "ios/Tests/capacitorGpsEnableIosPluginTests")
    ]
)
