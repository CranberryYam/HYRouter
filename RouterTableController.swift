//
//  RouterTableController.swift
//  RelaxApp4
//
//  Created by Honglin Yi on 4/29/18.
//  Copyright © 2018 henryyi. All rights reserved.
//

import UIKit

class RouterTableController: UITableViewController,RouterController {
    var params: [String : Any]?
    var controllers = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controllers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controllers[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = controllers[indexPath.row]
        navigate(controller, nil, false)
   }
}
