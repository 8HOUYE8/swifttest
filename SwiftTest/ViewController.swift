//
//  ViewController.swift
//  SwiftTest
//
//  Created by 勤为电子 on 2017/4/24.
//  Copyright © 2017年 勤为电子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       HttpRequest.shareInstance.request(requestType: .GET, urlString: "https://www.qigeairen.com/api/v2.0/superiorProducts", parameters: nil) { (json) in
/***测试版本回退*
         
         
         的，的；罚款；速度快；饭卡；上岛咖啡；看；上课；客服；Salk 风；卢卡斯的；饭卡；撒地方；laskd
         
         
         */
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}

