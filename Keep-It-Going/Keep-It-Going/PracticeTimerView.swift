//
//  PracticeTimerView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/9/21.
//

import SwiftUI

struct PracticeTimerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Happy Practicing!")
                    .bold()
                    .font(.title)
                Spacer()
                VStack {
                    Button(action: {
                        print("Start Timer")
                    }, label: {
                        Image("Play")
                            .resizable()
                            .frame(width: 64, height: 64, alignment: .center)
                    })
                }
                .padding(48)
                .cornerRadius(100)
                .background(
                ZStack {
                    Circle()
                        .shadow(color: .white, radius: 10, x: -10, y: -10)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                        .blendMode(.overlay)
                        .frame(width: 220,height:220)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 220,height:220)
                }
            )
                Spacer()
                Button(action: {
                    print("Continue")
                }, label: {
                    Text("Done")
                        .foregroundColor(.white)
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
            .padding(.bottom, 32)
        }
    }
}

struct PracticeTimerView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeTimerView()
    }
}
