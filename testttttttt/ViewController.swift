//
//  ViewController.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cal_btn() {
        let calVC = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        self.navigationController?.pushViewController(calVC, animated: true)
    }
    
    @IBAction func table_btn() {
        let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "TableDynamicViewController") as! TableDynamicViewController
        self.navigationController?.pushViewController(tableVC, animated: true)
    }


}

