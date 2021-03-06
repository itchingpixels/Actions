
//
//  SecondViewController.swift
//  actions
//
//  Created by Manu on 9/7/16.
//  Copyright © 2016 manuege. All rights reserved.
//

import UIKit
import Actions

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.add(observer: self, name: .notificationName) { [unowned self] in
            print("observe notification from \(self)")
        }
 
    }
    
    @objc func didReceiverNot() {
        print("Second VC")
    }
    
    deinit {
        print("deinit \(self)")
    }
    
    @IBAction func didPressPostNotification(sender: AnyObject) {
        NotificationCenter.default.post(name: .notificationName,
                                        object: nil)
    }
}
