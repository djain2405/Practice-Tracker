//
//  ClassDropDownView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/2/21.
//

import SwiftUI

struct ClassDropDownView: View {
    @State var expand = false

    var body: some View {
        VStack(spacing: 30) {
            HStack() {
                Text("Choose the class")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable()
                    .frame(width: 13, height: 6)
                    .foregroundColor(.white)
            }.onTapGesture {
                self.expand.toggle()
            }
            if expand {
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("Class One")
                        .padding(10)
                }.foregroundColor(.white)
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("Class Two")
                        .padding(10)
                }.foregroundColor(.white)
                Button(action: {
                    self.expand.toggle()
                }) {
                    Text("Class Three")
                        .padding(10)
                }.foregroundColor(.white)
            }
        }
        .padding()
        .background(LinearGradient(gradient: .init(colors: [.blue, .purple]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(15)
        .shadow(color: .gray, radius: 5)
        .animation(.spring())
    }
}

struct ClassDropDownView_Previews: PreviewProvider {
    static var previews: some View {
        ClassDropDownView()
    }
}
