//
//  ViewController.swift
//  ToastExtension
//
//  Created by Foodstory on 11/5/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showToastAction() {
        showToast(message: "123456", seconds: 3.0)
    }


}

