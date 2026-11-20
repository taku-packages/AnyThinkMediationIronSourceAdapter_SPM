// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationIronSourceAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationIronSourceAdapter",
            targets: ["AnyThinkMediationIronSourceAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package.git", exact: "9.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIronSourceAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkIronSourceAdapter/90800.2.10/AnyThinkIronSourceAdapter-90800.2.10.zip",
            checksum: "bd535c4d78648f410c029534d50960b3f8438656bfbfa851292b04c341681a4c"
        ),
        .target(
            name: "AnyThinkMediationIronSourceAdapterTarget",
            dependencies: [
                "AnyThinkIronSourceAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package")
            ],
            path: "Sources/AnyThinkMediationIronSourceAdapterTarget"
        )
    ]
)