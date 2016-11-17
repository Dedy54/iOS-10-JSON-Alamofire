//
//  ViewController.swift
//  JsonTest
//
//  Created by Praveen Samuel . J on 14/11/16.
//  Copyright © 2016 Praveen Samuel . J. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var firstName = ""
    var city = ""
    var phone = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https://randomuser.me/api/"
        Alamofire.request(url).responseJSON { response in
     //       print(response.request)  // original URL request
    //        print(response.response) // HTTP URL response
    //        print(response.data)     // server data
     //       print(response.result)   // result of response serialization
            
            if let JSON = response.result.value  as? Dictionary<String, AnyObject>{
                if let dictinner = JSON["results"]![0] as? Dictionary<String, AnyObject>{
                    
                        if let idea = dictinner["gender"] as? String{
                            self.firstName = idea
                            print ("###\(self.firstName)")
                        }
                    
                            
                    
                }
            }
           
        }
        
    }



}

