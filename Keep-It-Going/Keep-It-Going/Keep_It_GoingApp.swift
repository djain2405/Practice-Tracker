//
//  Keep_It_GoingApp.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 2/27/21.
//

import SwiftUI

@main
struct Keep_It_GoingApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView(userViewModel: UserViewModel())
        }
    }
}
