//
//  MainPresenter.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class MainPresenter {
    weak var viewController: MainDisplayLogic?
    
    required init() {
        
    }
}

extension MainPresenter: MainPresentationLogic {
    
    func presentSomething(response: Main.Something.Response) {
        let vm = String(format: "%.2f", response.result)
        let viewModel = Main.Something.ViewModel(result: vm)
        viewController?.displaySomething(viewModel: viewModel)
    }
}
