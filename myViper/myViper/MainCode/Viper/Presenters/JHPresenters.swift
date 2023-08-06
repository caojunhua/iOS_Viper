//
//  JHPresenters.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

class JHPresenters: JHPresenterProtocols {
    
    
    weak var view: JHViewProtocols?
    
    var router: JHRouterProtocols?
    
    var interactor: JHInteractorProtocols?
    
    var result: Any?
    
    func viewDidLoad() {
        view?.showLoading()
        printTest("【调用顺序】step3: 通过presenter发起 数据请求")
        interactor?.interactorRetrieveData(by: "")
    }
    
    func didInteractorRetrieveData(data: Any) {
        view?.hideLoading()
        result = data
        printTest("【调用顺序】step9: preseter执行数据回调")
        view?.reloadView()
    }
    
    func didInteractorReceiveError(error: MyError) {
        view?.hideLoading()
        view?.showError()
    }
    
}
