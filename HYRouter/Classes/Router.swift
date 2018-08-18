//
//  Rounter.swift
//  RelaxApp2
//
//  Created by Honglin Yi on 3/4/18.
//  Copyright © 2018 Honglin Yi. All rights reserved.
//

import Foundation
import UIKit

public typealias RouterParams = [String:Any]

//MARK: RounterController
/**
  If use HYRouter, all of viewcontrollers have to use this protocol
*/
public protocol RouterController:class {
    /**
    Accepted all the data passed by last Controller.
     
    For exmpale:
     ```
     var params:[String:Any]? {
         didSet {
             guard let params = params else { return }
             if params.keys.contains("videoUrl")
             { self.videoUrl = videoUrl }
          }
     }
     var videoUrl:String?
     ```
    */
    var params:[String:Any]? { get set }
}

public extension RouterController where Self:UIViewController {
    /**
     Navigate to next ViewController
     
     - Parameter controllerName: for controller using storyboard, it's is storyboard id, for controller without storyboard, it's the classname
     - Parameter params: all the data that need to pass to the next ViewController
     - Parameter isPresent: yes for modal presentation, no for push navigation
     */
    func navigate(_ controllerName:String,
                  _ params:[String:Any]? = [String:Any](),
                  _ isPresent:Bool = true,
                  _ animated:Bool = true) {
        print("Navigated to "+controllerName+"Controller")
        guard let vc = initController(controllerName) else { return }
        if let paras = params { vc.params = paras }
        pushAndPre(isPresent, vc as! UIViewController, animated)
    }

}


