//
//  DetailLaunchViewModel.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 17/10/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates
//

import Foundation
import Combine

final class DetailLaunchViewModel: ObservableObject {

    @Published private(set) var launch: Launch?
    
    private let launchesRepository: LaunchesRepositoryContract
    private var cancellables = Set<AnyCancellable>()
    
    init(launchesRepository: LaunchesRepositoryContract) {
        self.launchesRepository = launchesRepository
        setUp()
    }
    
    func setUpVM(for launch: Launch) {
        self.launch = launch
    }
}

private extension DetailLaunchViewModel {
    func setUp() {}
}
