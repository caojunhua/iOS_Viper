//
//  JHHomeViewController.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import UIKit

class JHHomeViewController: UIViewController {
    var presenter: JHPresenterProtocols?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printTest("【调用顺序】step1: viewDidLoad")
        presenter?.viewDidLoad()
        view.backgroundColor = .white
    }
    
}

extension JHHomeViewController: JHViewProtocols {
    
    func reloadView() {
        let presenter = presenter as? JHPresenters
        printTest("【调用顺序】step10: view执行数据回调, 刷新UI \(presenter?.result)")
    }
    
    func showLoading() {
        printTest("【调用顺序】step2: showLoading")
    }
    
    func showError() {
        printTest("---showError")
    }
    
    func hideLoading() {
        printTest("---hideLoading")
    }
}
