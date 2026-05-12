// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RTBSDK-AdMob",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "RTB_GraviteRTBAdMobMediationAdapter",
            targets: ["RTB_GraviteRTBAdMobMediationAdapter"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AddApptr/RTBSDK.git", exact: "1.10.0-beta1"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", .upToNextMinor(from: "12.14.0")),
    ],
    targets: [
        .target(
            name: "RTB_GraviteRTBAdMobMediationAdapter",
            dependencies: [
                .product(name: "RTBSDK", package: "RTBSDK"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                "GraviteRTBAdMobMediationAdapter",
            ],
            path: "./Sources/GraviteRTBAdMobMediationAdapter"
        ),

        // Mark: Binary Targets
        .binaryTarget(
            name: "GraviteRTBAdMobMediationAdapter",
            url: "https://ios-sdk-rtb.gravite.net/RTBSDK_SPM/1.10.0-beta1/GraviteRTBAdMobMediationAdapter.zip",
            checksum: "f889ea35b45cee43d37d7cedae61123073acbc2af4ec3e0e892f5b5af032347e"
        ),
    ]
)
