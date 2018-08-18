//
//  RouterTableController.swift
//  RelaxApp4
//
//  Created by Honglin Yi on 4/29/18.
//  Copyright © 2018 henryyi. All rights reserved.
//

import UIKit

public class RouterTableController: UITableViewController,RouterController {
    public var params: [String : Any]?
    var controllers = [String]()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controllers.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = controllers[indexPath.row]
        return cell
    }
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = controllers[indexPath.row]
        navigate(controller, nil, false)
   }
}
