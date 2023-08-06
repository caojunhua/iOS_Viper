//
//  JHHomeDetailEntity.swift
//  myViper
//
//  Created by cao hua on 2023/8/6.
//

import Foundation

class JHHomeDetailEntity: JHEntityProtocols {
    var interactor: JHInteractorProtocols?
    
    func retrieveData(by params: Any) {
        MyViperNetProvider.request(.playlist(params as! [String : Any])) { result in
            switch result {
            case let .success:
                break
            case let .failure(_):
                break
            }
        }
    }
    
    func didReceiveData(data: Any) {
        
    }
    
    func didReceiveError(error: MyError) {
        
    }
    
    
}
