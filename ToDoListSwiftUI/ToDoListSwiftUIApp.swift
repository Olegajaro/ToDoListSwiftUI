//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Олег Федоров on 04.11.2021.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for View
 
 
 */

@main
struct ToDoListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
