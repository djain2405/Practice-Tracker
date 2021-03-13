//
//  SaveCancelContainerView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/12/21.
//

import SwiftUI

struct SaveCancelContainerView: View {
    var body: some View {
        HStack{
            Button(action: {
                print("Continue")
            }, label: {
                Text("Cancel")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.blue)
            )
            .foregroundColor(.white)
            Button(action: {
                print("Continue")
            }, label: {
                Text("Save")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.blue)
            )
            .foregroundColor(.white)
        }
        .padding()
    }
}

struct SaveCancelContainerView_Previews: PreviewProvider {
    static var previews: some View {
        SaveCancelContainerView()
    }
}
