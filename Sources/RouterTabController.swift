//
//  RouterTabController.swift
//  RelaxApp4
//
//  Created by Honglin Yi on 4/29/18.
//  Copyright © 2018 henryyi. All rights reserved.
//

import UIKit

class RouterTabController: UITabBarController,RouterController {
    
    var params: [String : Any]? {
        didSet {
            guard let params = params else { return }
            if params.keys.contains("controllers") {
                guard let value = params["controllers"] as? [String]
                else { return }
                controllers = value
            }
            if params.keys.contains("titles"),
               let value = params["titles"] as? [String?]
            { titles = value }
            if params.keys.contains("images"),
               let value = params["images"] as? [String?]
            { images = value }
            addChildVCs()
        }
    }
    
    var controllers = [String]()
    var titles = [String?]()
    var images = [String?]()
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    private func addChildVCs() {
        for (i,controller) in controllers.enumerated() {
            if let vc = initController(controller) as? UIViewController {
                let check = i < titles.count && titles[i] != nil
                let name = check ? (titles[i])! : controller
                
                let check2 = i < images.count && images[i] != nil
                let image = check2 ? (images[i])! : "Core-Home"
                let image2 = image + "2"
                
                let rc = UINavigationController(rootViewController: vc)
                rc.tabBarItem = UITabBarItem(title: name, image: UIImage.init(named: image2), selectedImage:  UIImage.init(named: image))
                self.addChildViewController(rc)
            }
        }
    }
    
}
