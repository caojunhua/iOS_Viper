//
//  JHEntityProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

protocol JHEntityProtocols: AnyObject {
    /*
     注意：这里如果不负责对interactor数据回调，应该不用引用interactor
          因为，通过一个请求数据方法，就可以满足需求了
     */
    // 对上游，interactor
    // 应该弱引用
    var interactor: JHInteractorProtocols? { get set }
    // 请求数据
    func retrieveData(by params: Any)
    
    // 收到数据
    func didReceiveData(data: Any)
    
    func didReceiveError(error: MyError)
}
