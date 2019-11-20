//
//  SplashViewController.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/13/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let seconds = 1.0
       DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarController")
                self.present(newViewController, animated: true, completion: nil)

       }
    }
}
