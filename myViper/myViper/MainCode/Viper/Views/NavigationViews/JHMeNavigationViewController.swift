//
//  JHMeNavigationViewController.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import UIKit

class JHMeNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let me = JHMeViewController()
        self.addChild(me)
    }
    
 

}
