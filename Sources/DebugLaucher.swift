//
//  DebugController.swift
//  RelaxApp
//
//  Created by Honglin Yi on 4/16/18.
//  Copyright © 2018 Honglin Yi. All rights reserved.
//

import UIKit

public class DebugLaucher {
    public static func tableController(controllers:[String],navigateTitle:String="Debug") -> UINavigationController {
        let vc = RouterTableController()
        vc.controllers = controllers
        vc.title = navigateTitle
        return UINavigationController(rootViewController: vc)
    }
    public static func tabController(controllers:[String], params:[String:Any]=[String:Any]()) -> UITabBarController {
        let vc = RouterTabController()
        var newParams = params
        newParams["controllers"] = controllers
        vc.params = newParams
        return vc
    }
}




