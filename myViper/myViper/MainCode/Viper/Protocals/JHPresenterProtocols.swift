//
//  JHPresenterProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/8/5.
//

import Foundation

protocol JHPresenterProtocols: AnyObject {
    // ----------- Part 1: 对上游view -----------
    // (实现的时候)弱引用view
    var view: JHViewProtocols? { get set }
    
    /*
     这些方法，就是presenter需要做的事，或者说司presenter应该具备的能力
     */
    // viewDidLoad需要处理的业务逻辑
    func viewDidLoad()
    
    
    
    
    
    
    
    // ----------- Part 2: 对平级 router ---------
    // 可以强引用router,因为router是被preseter单方面持有
    var router: JHRouterProtocols? { get set }
    
    
    
    
    
    
    
    
    
    // ------------- Part 3: 对下游 interactor ------------
    // presenter作为interactor的上游，可以强引用
    var interactor: JHInteractorProtocols? { get set }
    // 下游回调方法
    func didInteractorRetrieveData(data: Any)
}
