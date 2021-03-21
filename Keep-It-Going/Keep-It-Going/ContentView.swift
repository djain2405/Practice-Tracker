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
    @State private var confirmpassword: String = ""
    @ObservedObject var userViewModel: UserViewModel

    @State var practiceTimerView = false



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
                    TextField("Enter a username", text: $userName)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray).padding(15)
                    SecureField("Enter a password", text: $password)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.gray).padding(15)
                    SecureField("Confirm password", text: $confirmpassword)
                }
                .padding(5)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .overlay(RoundedRectangle(cornerRadius: 24).stroke(Color.blue, lineWidth: 2))
                ClassDropDownView()
                    .padding(.top, 24)
                Spacer()
                NavigationLink(
                    destination: PracticeTimerView(), isActive: $practiceTimerView){
                    Button(action: addUser, label: {
                        Text("Save")
                            .padding()
                            .padding(.leading, 24)
                            .padding(.trailing, 24)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.title3)
                            .cornerRadius(16)
                    })
                }
                
                Spacer()
                
            }
            .padding()
        }

    }
    
    private func addUser(){
            let user = UserSession(name: name, username: userName, password: password)
            userViewModel.add(user)
            withAnimation{
                self.practiceTimerView.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(userViewModel: UserViewModel())
    }
}
