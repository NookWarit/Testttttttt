//
//  TestInteractor.swift
//  testttttttt
//
//  Created by Nook iOS on 7/6/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class TestInteractor {
    var presenter: TestPresentationLogic?
    var worker: TestWorker?

    required init() {
        worker = TestWorker()
    }
}

extension TestInteractor: TestDataStore, TestBusinessLogic {
    func doSomething(request: Test.Something.Request) {
        worker?.doSomeWork()
        
        let response = Test.Something.Response()
        presenter?.presentSomethingOnSuccess(response: response)
    }
}
