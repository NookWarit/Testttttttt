//
//  MainViewController.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: @IBOutlet
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    var interactor: MainBusinessLogic?
    var router: (NSObjectProtocol & MainRoutingLogic & MainDataPassing)?
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
      configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      configure()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: Do something
    
    // MARK: IBAction
    @IBAction func btn_didtab() {
        
        doSomething()
    }
    
    func doSomething() {
        let request = Main.Something.Request(num1: Double(num1.text ?? "") ?? 0.0,
                                             num2: Double(num2.text ?? "") ?? 0.0)
        interactor?.doSomething(request: request)
    }
}

//MARK: Setup & Configuration
extension MainViewController {
    private func setup() {
        num1.delegate = self
        num1.keyboardType = .numberPad
        num2.delegate = self
        num2.keyboardType = .numberPad
    }
    
    private func configure() {
        MainConfiguration.shared.configure(self)
    }
}

extension MainViewController : MainDisplayLogic {
    func displaySomething(viewModel: Main.Something.ViewModel) {
        result.text = "Result \(viewModel.result)"
    }
}

extension MainViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits) != nil {
          return true
       } else if string == "" || string == "."{
          return true
       } else {
        return false
       }
    }
}
