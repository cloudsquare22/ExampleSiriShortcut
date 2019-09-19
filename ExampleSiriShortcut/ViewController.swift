//
//  ViewController.swift
//  ExampleSiriShortcut
//
//  Created by Shin Inaba on 2019/09/19.
//  Copyright © 2019 shi-n. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        super.userActivity = NSUserActivity.userActivity
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

}

extension NSUserActivity {
    public static let myActivityType = "jp.cloudsquare.ios.example.ExampleSiriShortcut.siri"
    
    public static var userActivity: NSUserActivity {
        let userActivity = NSUserActivity(activityType: myActivityType)
        
        userActivity.isEligibleForSearch = true
        userActivity.isEligibleForPrediction = true
        userActivity.title = "Example Siri Shortcut"
        userActivity.suggestedInvocationPhrase = "Test Shorcut"
        
        return userActivity
    }
}
