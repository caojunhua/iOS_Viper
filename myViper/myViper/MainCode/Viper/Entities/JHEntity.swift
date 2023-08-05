//
//  JHEntity.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

class JHEntity: JHEntityProtocols {
    
    
    weak var interactor: JHInteractorProtocols?
    
    func retrieveData(by params: Any) {
        printTest("【调用顺序】step5: 通过entity发起 数据请求")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            printTest("【调用顺序】step6: 2秒后，数据回调")
            self.didReceiveData(data: "请求回调的假数据")
        }
    }
    
    func didReceiveData(data: Any) {
        printTest("【调用顺序】step7: 执行数据回调")
        interactor?.didEntityReceiveData(data: data)
    }
    
}
