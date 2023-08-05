//
//  JHViewProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

protocol JHViewProtocols: AnyObject {
    // 持有一个presenter，帮我做事
    var presenter: JHPresenterProtocols? { get set }
    
    /*
     这些方法，都是UI回调相关的方法
     让我的presenter帮我做事情，等presenter给我回调结果就好了
     */
    func reloadView()
    func showLoading()
    func showError()
    func hideLoading()
}
