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
