//
//  JHFindNavigationViewController.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import UIKit

class JHFindNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let find = JHFindViewController()
        self.addChild(find)
    }
    
 

}
