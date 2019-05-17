//
//  DetailViewModelTests.swift
//  PDContactListTests
//
//  Created by David_Lam on 18/5/19.
//  Copyright © 2019 David_Lam. All rights reserved.
//

import XCTest
@testable import PDContactList

class DetailViewModelTests: XCTestCase {
    
    var subject: DetailViewModel!
    var detailViewControllerMock: DetailViewControllerMock!
    var dataProvider: DataProviderStub!
    let david = stubPayload.first!
    
    override func setUp() {
        super.setUp()
        detailViewControllerMock = DetailViewControllerMock()
        dataProvider = DataProviderStub()
        subject = DetailViewModel(view: detailViewControllerMock,
                                  dataProvider: dataProvider,
                                  person: david)
    }
    
    func testWhenViewDidLoadIsCalled_ShouldCallInvokeSetupWithPersonInViewController() {
        subject.viewDidLoad()
        assert(detailViewControllerMock.setupViewCalledWithPerson == david)
    }
}