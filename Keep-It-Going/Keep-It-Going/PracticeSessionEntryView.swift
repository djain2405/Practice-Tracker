//
//  PracticeSessionEntryView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/11/21.
//

import SwiftUI

struct PracticeSessionEntryView: View {
    
    @State var sessionName:String = ""
    @State var sessionDetails: String = ""
    
    var body: some View {
        VStack {
            Text("Practice for ...")
                .bold()
                .font(.title)
            Spacer()
                .frame(height: 24)
            TextField("Enter Session Name here...", text: $sessionName)
                .foregroundColor(Color.blue)
                .font(.title3)
                .padding(8)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.blue, lineWidth: 2))
            Spacer()
                .frame(height: 24)
            DurationView()
            Spacer()
                .frame(height: 24)
            Text("Enter notes here")
                .bold()
                .font(.body)
            TextEditor(text: $sessionDetails)
                .foregroundColor(Color.blue)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.blue, lineWidth: 2))
                .frame(height: 144)
            Spacer()
            SaveCancelContainerView()
        }
        .padding()

        
    }
}

struct PracticeSessionEntryView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeSessionEntryView()
    }
}
