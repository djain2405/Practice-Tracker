//
//  DurationView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/12/21.
//

import SwiftUI

struct DurationView: View {
    
    @ObservedObject var practiceTime = PracticeTime()
    
    var body: some View {
        VStack{
            Text("Duration")
                .bold()
                .font(.body)
            Spacer()
                .frame(height: 8)
            Text(String(format: "%02d", self.practiceTime.minutes)+":"+String(format: "%02d", self.practiceTime.seconds))
                .bold()
                .font(.title)
        }
    }
}

struct DurationView_Previews: PreviewProvider {
    static var previews: some View {
        DurationView()
    }
}
