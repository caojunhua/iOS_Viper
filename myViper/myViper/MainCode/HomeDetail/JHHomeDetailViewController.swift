//
//  JHHomeDetailViewController.swift
//  myViper
//
//  Created by cao hua on 2023/8/6.
//

import UIKit

class JHHomeDetailViewController: UIViewController {
    var presenter: HomeDetailPresenterProtocols?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        view.backgroundColor = .white
        setUI()
    }
    
    func setUI() {
        let subView = JHHomeDetailView()
        view.addSubview(subView)
    }

}

extension JHHomeDetailViewController: HomeDetailViewProtocols {
    
    
    func reloadData() {
        
    }
    
    func didPresenterReceiveData() {
        
    }
    
    func didPresenterReceiveError() {
        
    }
    
    
}
