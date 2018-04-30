<img src="https://github.com/CranberryYam/HYRouter/blob/master/Asset/Cover.png">

[![Language: Swift](https://img.shields.io/badge/language-swift-78CAAE.svg)](https://developer.apple.com/swift)
![Platform: iOS 8+](https://img.shields.io/badge/platform-iOS%208%2B-239AE2.svg)
![cocoapods compatible](https://img.shields.io/badge/cocoapods-compatible-brightgreen.svg)
![License: MIT](https://img.shields.io/badge/license-MIT-EC7A89.svg)
![Release version](https://img.shields.io/badge/release-v0.0.2-ff69b4.svg)

<img src="https://github.com/CranberryYam/HYRouter/blob/master/Asset/HYRouterExplain.png">

# Introduction
HYRouter is the router framework that I built while I was doing one of my app with module development. It helps you decouple ViewControllers, run all your ViewControllers in a debug UITableViewController and flexibly set up the main UITabbarController.

If you use traditinal navigation methods offered by Apple, you can't decouple two modules. Each time when you navigate to the B_ViewController, you have to init an object of the B_ViewController. It means that you have to know the existence the B_ViewController Class. When the B_ViewController is from a different module, decoupling modules becomes very tough.

## Feathers
- [x] Navigate through the ViewController Identifier  
- [x] Pass data between ViewControllers easily
- [x] Support ViewController with storyboard or without storyboard
- [x] Configure the main UITabBarController with a dictionary
- [x] Setup entries for all ViewController in the dubug mode


# Installation

You can install HYRouter via CocoaPods by adding it to your `Podfile`:
```
use_frameworks!

source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'

pod 'HYRouter'
```

And run `pod install`.


# Usage

## Router
### 1 - Implement the RouterController protocol
```swift
import HYRouter

class MyViewController:UIViewController, RouterController {
    var params: [String : Any]?
}
```
All data from previous ViewController will be here

### 2 - Prepare the data needed to pass
```swift
let param = RouterParams()
param["videoUrl"] = "https://video.com/id=123"
```
### 3 - Call Navigate method
```swift
navigate(controllerName: String, params:RouterParams,isPresent: Bool)
```
- **controllerName**: When the next ViewController use storyboard, the controllerName is the stroyboard identifier. When doesn't use storyboard, the controllerName is the ViewController class name
- **params**: data is configured in a dictionary structure
- **isPresent**: True for presentViewController, false for pushViewController

### 4 - Receive the data
```swift
import HYRouter

class MyViewController:UIViewController, RouterController {
    var params: [String : Any]? {
      didSet {
              guard let params = params else { return }
              if params.keys.contains("videoUrl")
              { self.urlString = params["videoUrl"] as? String }
          }
    }
}
```

## DebugViewController
<img src="https://github.com/CranberryYam/HYRouter/blob/master/Asset/DebugLauncher.png">
```swift
AppDelegate.swift
import HYRouter

let vcs = ["Record","ActityHisController","History"]
window?.rootViewController = DebugLaucher.tableController(controllers: vcs)
```

## Main UITabBarController
```swift
AppDelegate.swift
import HYRouter

let vcs = ["Record","ActityHisController","History"]
window?.rootViewController = DebugLaucher.tabController(controllers: vcs)
```
