//
//  MainViewControllerMock.swift
//  PDContactListTests
//
//  Created by David_Lam on 16/5/19.
//  Copyright © 2019 David_Lam. All rights reserved.
//

import Foundation
@testable import PDContactList

class MainViewControllerMock: MainViewControllerType {
    var setupViewCalledWithStates: [MainViewState] = []
    func setupView(state: MainViewState) {
        setupViewCalledWithStates.append(state)
    }
}
