//
//  ViewController.swift
//  HYRouter
//
//  Created by CranberryYam on 08/17/2018.
//  Copyright (c) 2018 CranberryYam. All rights reserved.
//

import UIKit
import HYRouter

class ViewController: UIViewController, RouterController {
    var params: [String : Any]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextScreenAction(_ sender: Any) {
        navigate("JumpController", nil, true)
    }
    
    @IBAction func nextScreenAction2(_ sender: Any) {
        navigate("Tail", nil, false, false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

