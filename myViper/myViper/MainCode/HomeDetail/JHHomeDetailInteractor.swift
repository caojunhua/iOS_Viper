//
//  JHHomeDetailInteractor.swift
//  myViper
//
//  Created by cao hua on 2023/8/6.
//

import Foundation

class JHHomeDetailInteractor: JHInteractorProtocols {
    weak var presenter: JHPresenterProtocols?
    
    func interactorRetrieveData(by params: Any) {
        entity?.retrieveData(by: params)
    }
    
    var entity: JHEntityProtocols?
    
    func didEntityReceiveData(data: Any) {
        
    }
    
    func didEntityReceiveError(error: MyError) {
        
    }
    
    
}
