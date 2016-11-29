//
//  ViewController.swift
//  GigyaTest
//
//  Created by Linda Morton on 11/29/16.
//  Copyright © 2016 HyperHyper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        Gigya.showPluginDialogOver(self, plugin: "accounts.screenSet", parameters: ["screenSet": "Mobile-login-shea", "startScreen": "gigya-register-screen"], completionHandler: { (closedByUser, error) in
            if error == nil && Gigya.isSessionValid() {
                print("success")
            }
            else {
                print("failed")
                print("error = \(error)")
                print("Gigya.isSessionValid = \(Gigya.isSessionValid())")
            }
        }, delegate: nil)
    }


}

