//
//  TestProtocol.swift
//  testttttttt
//
//  Created by Nook iOS on 7/6/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol TestDisplayLogic: class {
    func displaySomethingOnSuccess(viewModel: Test.Something.ViewModel)
    func displayErrorMessage(errorMessage: String)   
}

//MARK: Interactor
protocol TestBusinessLogic {
    func doSomething(request: Test.Something.Request)
}

//MARK: Presenter
protocol TestPresentationLogic {
    func presentSomethingOnSuccess(response: Test.Something.Response)
    func presentSomethingOnError(errorMessage: String)
}

//MARK: Routable
@objc protocol TestRoutingLogic {

}

//MARK: DataStore
protocol TestDataStore {

}

//MARK: DataPassing
protocol TestDataPassing {
    var dataStore: TestDataStore? { get }
}
