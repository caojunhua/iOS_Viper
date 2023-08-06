//
//  NavigationRouters.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import Foundation
import UIKit

class NavigationRouters: JHRouterProtocols {
    
    static func createTabBarVC() -> UITabBarController {
        let tabBarVC = JHTabBarController()
        
        let homeRootVC = NavigationRouters().createRootViewController(vc: JHHomeViewController())
        let homeVC = JHHomeNavigationViewController(rootViewController: homeRootVC)
        let findVC = JHFindNavigationViewController()
        let meVC = JHMeNavigationViewController()
        
        homeVC.tabBarItem = UITabBarItem(title: "主页",
                                         image: UIImage(named: "home_nor"),
                                         selectedImage: UIImage(named: "home_sel"))
        findVC.tabBarItem = UITabBarItem(title: "发现",
                                         image: UIImage(named: "list_nor"),
                                         selectedImage: UIImage(named: "list_sel"))
        meVC.tabBarItem = UITabBarItem(title: "我的",
                                       image: UIImage(named: "my_nor"),
                                       selectedImage: UIImage(named: "my_nor"))
        
        tabBarVC.addChild(homeVC)
        tabBarVC.addChild(findVC)
        tabBarVC.addChild(meVC)
        
        tabBarVC.selectedIndex = 0
        
        return tabBarVC
    }
    
    func pushToNextVC(from previousView: UIViewController, forModel model: Any) {
        let nextView = JHHomeDetailViewController()
        
        previousView.navigationController?.pushViewController(nextView, animated: true)
        
    }
    
    func createRootViewController(vc: UIViewController & JHViewProtocols) -> UIViewController & JHViewProtocols {
        
        // 1. view 和 presenter 互相持有 （注意，一个强引用，一个弱引用）
        let presenter = JHPresenters()
        vc.presenter = presenter
        presenter.view = vc
        
        // 2. presenter 持有 router
        presenter.router = NavigationRouters()
        
        // 3. presenter 和 interactor互相持有 （注意，一个强引用，一个弱引用）
        let interactor = JHInteractors()
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        // 4. interactor 和 entity 互相持有 （注意，一个强引用，一个弱引用）
        let entity = JHEntity()
        interactor.entity = entity
        entity.interactor = interactor
        
        return vc
    }
}
