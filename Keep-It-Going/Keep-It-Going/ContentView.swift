//
//  ContentView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 2/27/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var savedUser = SavedUser()
    
    var body: some View {
        NavigationView {
            if(savedUser.username.isEmpty && savedUser.password.isEmpty) {
                SignUpView(userViewModel: UserViewModel())
                    .padding()
            } else {
                Text("Hello World!")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
