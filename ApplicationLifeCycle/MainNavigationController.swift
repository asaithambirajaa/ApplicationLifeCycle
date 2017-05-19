//
//  navigationController.swift
//  ApplicationLifeCycle
//
//  Created by raja A on 4/6/17.
//  Copyright © 2017 raja A. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
       super.viewDidLoad()
        view.backgroundColor = .red
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
            
        } else {
            perform(#selector(showLoginControoler), with: nil , afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return false
    }
    
    func showLoginControoler () {
        let loggedInCont = ViewController()
        present(loggedInCont, animated: true, completion: {
            
            
        })
    }
}

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        let lab = UILabel.init()
        lab.frame = CGRect(x: 100, y: 100, width: 150, height: 50)
        lab.textAlignment = .center
        lab.text = "WelCome"
        lab.font = UIFont.systemFont(ofSize: 22)
        self.view.addSubview(lab)
    }
}
