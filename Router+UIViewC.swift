//
//  Router+UIViewC.swift
//  HYRouter
//
//  Created by Honglin Yi on 8/17/18.
//


//MARK: UIVIewController init controller from storyboard or classname
public extension UIViewController {
    /**
     A convinient method from HYRouter, directly init the Controller by its ID
     */
    func initControllerFromStoryBoard<T>(_ identifier:String) -> T {
        let storyboard = UIStoryboard(name:identifier, bundle: nil)
        let pc:T = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        return pc
    }
    
    func initControllerFromClassName(_ identifier:String) -> UIViewController? {
        guard let myclass = stringClassFromString(identifier)
            as? UIViewController.Type else { return nil }
        let instance = myclass.init()
        return instance
    }
    
    fileprivate func stringClassFromString(_ className: String) -> AnyClass? {
        guard let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"]
            as? String else { return nil}
        let namespace2 = namespace.replacingOccurrences(of: " ", with: "_", options: .literal, range: nil) //for app name like "Squezze It"
        let cls:AnyClass? = NSClassFromString("\(namespace2).\(className)")
        return cls
    }
    
}
