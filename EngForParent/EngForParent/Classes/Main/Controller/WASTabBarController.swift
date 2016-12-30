//
//  WASTabBarController.swift
//  EngForParent
//
//  Created by admin on 16/12/30.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class WASTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = UIColor.orange
        addChildViewController(getTabBarRootController(title: "孩子表现", imgName: "tabbar_home", controller: WASBabyBehaviourController()))
        addChildViewController(getTabBarRootController(title: "通知", imgName: "tabbar_discover", controller: WASNotificationController()))
        addChildViewController(getTabBarRootController(title: "个人中心", imgName: "tabbar_profile", controller: WASPersonalController()))
    }
    
    func getTabBarRootController(title:String, imgName:String, controller:UIViewController) -> WASNavigationController {
        controller.title = title
        controller.tabBarItem.image = UIImage(named: imgName)
        let selectedImage = UIImage(named: "\(imgName)_selected")?.withRenderingMode(.alwaysOriginal)
        controller.tabBarItem.selectedImage = selectedImage
        
        let nav = WASNavigationController(rootViewController: controller)
        
        return nav
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
