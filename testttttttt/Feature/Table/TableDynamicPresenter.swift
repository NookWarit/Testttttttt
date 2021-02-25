//
//  TableDynamicPresenter.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class TableDynamicPresenter {
    weak var viewController: TableDynamicDisplayLogic?
    
    required init() {
        
    }
}

extension TableDynamicPresenter: TableDynamicPresentationLogic {
    
    func presentSomething(response: TableDynamic.Something.Response) {
        let viewModel = TableDynamic.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
