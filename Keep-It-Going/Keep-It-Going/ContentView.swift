//
//  ContentView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 2/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var userName: String = ""
    @State private var password: String = ""


    var body: some View {
        NavigationView {
            VStack(alignment: HorizontalAlignment.center){
                Spacer()
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.gray).padding(15)
                    TextField("Enter your full name", text: $name)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .foregroundColor(.gray).padding(15)
                    TextField("Enter a username", text: $name)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray).padding(15)
                    TextField("Enter a password", text: $name)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray).padding(15)
                    TextField("Confirm password", text: $name)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                ClassDropDownView()
                Spacer()
                Button(action: {
                    print("Sign up!")
                }, label: {
                    Text("Save")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .font(.title3)
                        .cornerRadius(32)
                })
                Spacer()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
