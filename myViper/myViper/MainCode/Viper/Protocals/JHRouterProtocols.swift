//
//  JHRouterProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import Foundation
import UIKit

protocol JHRouterProtocols: AnyObject {
    
    static func createTabBarVC() -> UITabBarController
    
    func pushToNextVC(from previousView: UIViewController, forModel model: Any)
    
    func createRootViewController(vc: UIViewController & JHViewProtocols) -> UIViewController & JHViewProtocols
}
