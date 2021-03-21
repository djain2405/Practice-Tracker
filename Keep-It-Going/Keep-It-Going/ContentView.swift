//
//  ContentView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 2/27/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            SignUpView(userViewModel: UserViewModel())
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
