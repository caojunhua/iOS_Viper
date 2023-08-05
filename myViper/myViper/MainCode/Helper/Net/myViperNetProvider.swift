//
//  myViperNetProvider.swift
//  myViper
//
//  Created by cao hua on 2023/7/30.
//

import Foundation
import Moya

let myViperNetProvider = MoyaProvider<MyViperNet>()

public enum MyViperNet {
  case channel
  case playlist([String: Any])
}

extension MyViperNet: TargetType {
  public var sampleData: Data {
    return Data()
  }
  
  public var baseURL: URL {
    switch self {
    case .channel:
      return URL(string: "https://www.douban.com")!
    case .playlist(_):
      return URL(string: "https://douban.fm")!
    }
  }
  
  public var path: String {
    switch self {
    case .channel:
        return "/j/app/radio/channels"
    case .playlist(_):
        return "/j/mine/playlist"
    }
  }
  
  public var method: Moya.Method {
    return .get
  }
  
  public var task: Moya.Task {
    switch self {
    case .channel:
      return .requestPlain
    case .playlist(let dict):
      return .requestParameters(parameters: dict, encoding: URLEncoding.default)
    }
  }
  
  public var headers: [String : String]? {
    return nil
  }
}
