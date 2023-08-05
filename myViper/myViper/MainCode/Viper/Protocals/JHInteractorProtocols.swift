//
//  JHInteractorProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

protocol JHInteractorProtocols: AnyObject {
    //  ----------- Part 1: 对上游 presenter -----------
    // （实现的时候）弱引用presenter
    var presenter: JHPresenterProtocols? { get set }
    
    // 上游主动发起 <请求数据> 方法
    func interactorRetrieveData(by params: Any)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //  ----------- Part 2: 对下游 entity -----------
    // 可以强引用
    var entity: JHEntityProtocols? { get set }
    // 下游回调方法 <收到数据回调>
    func didEntityReceiveData(data: Any)
}
