//
//  Router+Algo.swift
//  HYRouter
//
//  Created by Honglin Yi on 8/17/18.
//

extension RouterController where Self:UIViewController {
    
    private func getController(_ isStoryBoard:Bool, _ identifier:String) -> RouterController? {
        if isStoryBoard {
            let vc:RouterController = initControllerFromStoryBoard(identifier)
            return vc
        } else {
            return initControllerFromClassName(identifier) as? RouterController
        }
    }
    
    
    /**
     Init a ViewController
     
     - Parameter controllerName: for controller using storyboard, it's is storyboard id, for controller without storyboard, it's the classname
     */
    func initController(_ controllerName:String) -> RouterController? {
        var usedStoryBoard = false
        if controllerName.range(of:"Controller", options:.caseInsensitive) == nil {
            usedStoryBoard = true
            let crlName = controllerName + "Controller"
            let crlName2 = controllerName + "ViewController"
            if initControllerFromClassName(crlName) == nil &&
                initControllerFromClassName(crlName2) == nil {
                print(controllerName+" hasn't been develped")
                return nil
            }
        }
        //check the controller existence and use storyboard or not
        //must check, cause can't handle the exception from initStoryBoard
        
        guard let vc = getController(usedStoryBoard, controllerName)
            else { return nil }
        return vc
    }
    
    
    func pushAndPre(_ isPresent:Bool,_ vc:UIViewController, _ animated:Bool) {
        if isPresent {
            self.present(vc, animated: animated, completion: nil)
        } else {
            self.navigationController?.pushViewController(vc, animated: animated)
        }
    }
    
}
