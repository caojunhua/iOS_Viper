//
//  JHHomeNavigationViewController.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import UIKit

class JHHomeNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let home = JHHomeViewController()
//        self.addChild(home)
        let router = NavigationRouters()
        router.addChildViewController(nav: self, vc: home)
    }

}
