//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by CustomAR LLC on 17.08.24.
//

import SwiftUI

@main
struct TodoListAppApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
