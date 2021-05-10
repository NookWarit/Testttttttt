//
//  ViewController.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//

import UIKit
//import Toast_Swift

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
    
    @IBAction func toast_didtab() {
//        self.view.makeToast("This is a piece of toast", duration: 3.0, position: .top)
//        self.view.makeToast("noooooo no no no", duration: 3.0, point: CGPoint(x: 50.0, y: 50.0), title: "", image: UIImage(named: "wrong"), completion: {_ in
//
//        })
//        showToastSuccess(message: "ไม่สามารถส่งได้ หรือส่งได้ ไม่รู้โว้ย")
        showToastErrorWithButton(message: "ไม่สามารถส่ง log ได้นะ ", button: "ลองใหม่", clicked: { [ weak self] in
            guard let strongSelf = self else { return }
            strongSelf.toast_didtab()
        })
        
        
    }
}

