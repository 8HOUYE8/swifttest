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
    
           //测试下git
        
        
           /*sssssssss这是测试用的*/
        
        
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}

