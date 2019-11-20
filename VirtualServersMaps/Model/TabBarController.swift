//
//  TabBarController.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/12/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

final class TabBarController: UIViewController {
    
    
    
    var tabBar: UITabBarController!
    override func viewDidLoad() {
        super.viewDidLoad()
        creatTabBar()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func creatTabBar(){
        tabBar = UITabBarController()
        
        let Managment = UIViewController()
        Managment.title = "Managment"
        Managment.tabBarItem.image = UIImage(named: "uplode")
        Managment.tabBarItem.selectedImage = UIImage(named: "uplode")
        Managment.view.backgroundColor = UIColor.orange
        
        let allNodes = UIViewController()
        allNodes.title = "AllNodes"
        allNodes.tabBarItem.image = UIImage(named: "allnode1111")
        allNodes.tabBarItem.selectedImage = UIImage(named: "allnode1111")
        allNodes.view.backgroundColor = UIColor.blue
        
        let diagram = UIViewController()
        diagram.title = "Diagram"
        diagram.tabBarItem.image = UIImage(named: "diagram111")
        diagram.tabBarItem.selectedImage = UIImage(named: "diagram111")
        diagram.view.backgroundColor = UIColor.cyan
        
        let menu = UIViewController()
        menu.title = "Menu"
        menu.view.backgroundColor = UIColor.black
        menu.tabBarItem.image = UIImage(named: "menu111")
        menu.tabBarItem.selectedImage = UIImage(named: "menu111")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller  = storyboard.instantiateViewController(withIdentifier: "MapsController")
        controller.title = "Maps"
        controller.tabBarItem.image = UIImage(named: "maps111")
        controller.tabBarItem.selectedImage = UIImage(named: "maps111")
        
        tabBar.viewControllers = [controller , Managment , allNodes ,diagram , menu]
        self.view.addSubview(tabBar.view)
    }
}
