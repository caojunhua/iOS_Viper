//
//  JHHomeViewController.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import UIKit
import PKHUD

class JHHomeViewController: UIViewController {
    var presenter: JHPresenterProtocols?
    var tableView: JHHomeTableView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = JHHomeTableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        view.addSubview(self.tableView!)
        presenter?.viewDidLoad()
        view.backgroundColor = .white
        block()
    }
    
    func block() {
        self.tableView?.didClickCellHandler = { model in
            self.presenter?.router?.pushToNextVC(from: self, forModel: model)
        }
    }
}

extension JHHomeViewController: JHViewProtocols {
    
    func reloadView() {
        if let presenter = presenter as? JHPresenters,
           let data = presenter.result as? JHChannelModelArray {
            tableView?.setData(data: data)
        }
    }
    
    func showLoading() {
        PKHUD.sharedHUD.show(onView: view)
    }
    
    func showError() {
        HUD.flash(.labeledError(title: "请求失败", subtitle: "网络错误，请求检查网络"), delay: 2)
    }
    
    func hideLoading() {
        PKHUD.sharedHUD.hide(true)
    }
    
    
}
