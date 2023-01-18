//
//  SwiftUIDemoMapAppApp.swift
//  SwiftUIDemoMapApp
//
//  Created by Julio Collado Perez on 1/11/23.
//

import SwiftUI

@main
struct SwiftUIDemoMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
