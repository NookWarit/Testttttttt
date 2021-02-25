//
//  MainInteractor.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class MainInteractor {
    var presenter: MainPresentationLogic?
    var worker: MainWorker?

    required init() {
        worker = MainWorker()
    }
}

extension MainInteractor: MainDataStore, MainBusinessLogic {
    func doSomething(request: Main.Something.Request) {
        worker?.doSomeWork()
        let result = request.num1 + request.num2
        
        let response = Main.Something.Response(result: result)
        presenter?.presentSomething(response: response)
    }
}
