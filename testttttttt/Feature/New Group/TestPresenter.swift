//
//  TestPresenter.swift
//  testttttttt
//
//  Created by Nook iOS on 7/6/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class TestPresenter {
    weak var viewController: TestDisplayLogic?
    
    required init() {
        
    }
}

extension TestPresenter: TestPresentationLogic {
    
    func presentSomethingOnSuccess(response: Test.Something.Response) {
        let viewModel = Test.Something.ViewModel()
        viewController?.displaySomethingOnSuccess(viewModel: viewModel)
    }

    func presentSomethingOnError(errorMessage: String) {
        viewController?.displayErrorMessage(errorMessage: errorMessage)
    }
}
