//
//  JumpController.swift
//  HYRouter_Example
//
//  Created by Honglin Yi on 8/17/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import HYRouter

class JumpController: UIViewController,RouterController {
    var params: [String : Any]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        let button = UIButton(frame: CGRect(x: 20, y: 50, width: 100, height: 60))
        button.backgroundColor = .red
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func backAction() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
