//
//  JHInteractors.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

class JHInteractors: JHInteractorProtocols {
    
    
    weak var presenter: JHPresenterProtocols?
    
    var entity: JHEntityProtocols?
    
    func interactorRetrieveData(by params: Any) {
        printTest("【调用顺序】step4: 通过entity发起 数据请求")
        entity?.retrieveData(by: params)
    }
    
    func didEntityReceiveData(data: Any) {
        printTest("【调用顺序】step8: interarctor执行数据回调")
        presenter?.didInteractorRetrieveData(data: data)
    }
    
    func didEntityReceiveError(error: MyError) {
        presenter?.didInteractorReceiveError(error: error)
    }
    
    
    
}
