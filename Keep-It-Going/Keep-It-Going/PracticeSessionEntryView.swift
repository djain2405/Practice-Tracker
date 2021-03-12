//
//  PracticeSessionEntryView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/11/21.
//

import SwiftUI

struct PracticeSessionEntryView: View {
    
    @State var sessionName:String = ""
    var body: some View {
        Text("Practice for ...")
            .bold()
            .font(.title)
        TextField("", text: $sessionName)
            .foregroundColor(Color.blue)
            .keyboardType(.decimalPad)
            .frame(width: 32)
            .font(.title3)
        
    }
}

struct PracticeSessionEntryView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeSessionEntryView()
    }
}
