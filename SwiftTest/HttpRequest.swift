//
//  HttpRequest.swift
//  SwiftTest
//
//  Created by 勤为电子 on 2017/4/24.
//  Copyright © 2017年 勤为电子. All rights reserved.
//

import UIKit
enum RequsestMethod {
    case GET
    case POST
    case PUT
}
class HttpRequest: AFHTTPSessionManager {

    class var shareInstance:HttpRequest{
        struct Static{
            
            static var instance:HttpRequest = HttpRequest()
        }
        
        return Static.instance
    }
  
    
    func request(requestType: RequsestMethod, urlString: String, parameters: [String: AnyObject]?, completion: @escaping (AnyObject?) -> ()) {
        
        var token = UserDefaults.standard.object(forKey: "token")
        
        
        if UserDefaults.standard.object(forKey: "token")==nil {
            token = ""
        }
        HttpRequest.shareInstance.requestSerializer .setValue(token as? String, forHTTPHeaderField: "token")
        //成功回调
        let success = { (task: URLSessionDataTask, json: Any)->() in
            completion(json as AnyObject?)
        }
        
        //失败回调
        let failure = { (task: URLSessionDataTask?, error: Error) -> () in
            print("网络请求错误 \(error)")
            completion(nil)
        }
        
        if requestType == .GET {
            get(urlString, parameters: parameters, progress: nil, success: success, failure: failure)
        } else {
            post(urlString, parameters: parameters, progress: nil, success: success, failure: failure)
        }
    }
    
}
