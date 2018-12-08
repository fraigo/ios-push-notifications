//
//  ViewController.swift
//  ios-push-notifications
//
//  Created by User on 2018-12-07.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var initialNotification : [String : AnyObject]?

    override func viewDidLoad() {
        super.viewDidLoad()
        requestNotificationAuthorization()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if let aps = initialNotification {
            // Run the application with Scheme "Wait for executable to be launched"
            // To debug this code from xCode (Product -> Scheme -> Edit Scheme)
            // And wait for/launch  a remote notification
            processNotification(aps: aps)
        }
    }
    
    func processNotification(aps: [String : AnyObject]){
        let alert = UIAlertController(title: aps["category"] as? String, message: aps["alert"] as? String, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

