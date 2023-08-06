//
//  JHEntity.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation
import SwiftyJSON

class JHEntity: JHEntityProtocols {
    
    
    weak var interactor: JHInteractorProtocols?
    
    func retrieveData(by params: Any) {
        printTest("【调用顺序】step5: 通过entity发起 数据请求")
        MyViperNetProvider.request(.channel) { result in
            printTest("【调用顺序】step6: 2秒后，数据回调")
            switch result {
            case let .success(response):
                let data = response.data
                let jsonData = try? JSON(data: data)
                if let json = jsonData {
                    let channelModelArray = JHChannelModelArray(json: json)
                    self.didReceiveData(data: channelModelArray)
                }
                
            case .failure(_):
                self.didReceiveError(error: .requestError)
                
            }
        }
    }
    
    func didReceiveData(data: Any) {
        printTest("【调用顺序】step7: 执行数据回调")
        interactor?.didEntityReceiveData(data: data)
    }
    
    func didReceiveError(error: MyError) {
        interactor?.didEntityReceiveError(error: error)
    }
    
}
