//
//  HomeDetailProtocols.swift
//  myViper
//
//  Created by cao hua on 2023/8/6.
//

import Foundation

protocol HomeDetailViewProtocols: AnyObject {
    var presenter: HomeDetailPresenterProtocols? { get set }
    
  
    func reloadData()
    
    func didPresenterReceiveData()
    func didPresenterReceiveError()
}

protocol HomeDetailPresenterProtocols: AnyObject {
    var view: HomeDetailViewProtocols? { get set }
    var router: HomeDetailRouterProtocols? { get set }
    var interactor: HomeDetailInteractorProtocols? { get set }
    var params: Any? { get set }
    
    func viewDidLoad()
    
    
    func didInteractorReceiveData()
    func didInteractorReceiveError()
}

protocol HomeDetailInteractorProtocols: AnyObject {
    var presenter: HomeDetailPresenterProtocols? { get set }
    var entity: HomeDetailEntityProtocols? { get set }
    
    func interactorRetrieveData()
    func entityRetrieveData()
    func didEntityReceiveData()
    func didEntityReceiveError()
}

protocol HomeDetailEntityProtocols: AnyObject {
    var interactor: HomeDetailInteractorProtocols? { get set }
    
    func retrieveData()
    func didReceiveData()
}

protocol HomeDetailRouterProtocols: AnyObject {
    func pushToNextView()
}
