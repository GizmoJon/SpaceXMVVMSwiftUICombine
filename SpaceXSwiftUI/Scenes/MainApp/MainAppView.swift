//
//  MainAppUIView.swift
//  SpaceXSwiftUI
//
//  Created by Martin Lukacs on 16/10/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the MVVM Xcode Templates
//

import SwiftUI

struct MainAppView: View {
    @ObservedObject private var viewModel: MainAppViewModel
    
    init(with viewModel: MainAppViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        mainTableView
    }
}

// MARK: Main container view
private extension MainAppView {
    var mainTableView : some View {
        TabView {
            viewModel.router.routeToLaunches()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Launches")
                }
            
            viewModel.router.routeToRockets()
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Rockets")
                }
        }
        
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView(with: MainAppViewModel(router: MainRouter()))
    }
}
