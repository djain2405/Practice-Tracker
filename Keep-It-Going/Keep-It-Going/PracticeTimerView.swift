//
//  PracticeTimerView.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/9/21.
//

import SwiftUI

let SIZE_ICON = CGFloat(144)

struct PracticeTimerView: View {
    
    @State var timerIsPaused: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Happy Practicing!")
                    .bold()
                    .font(.title)
                Spacer()
                VStack {
                    if(timerIsPaused) {
                        Button(action: {
                            self.timerIsPaused.toggle()
                            print("Start Timer")
                        }, label: {
                            Image("Play")
                                .resizable()
                                .frame(width: 64, height: 64, alignment: .center)
                        })
                    } else {
                        Button(action: {
                            self.timerIsPaused.toggle()
                            print("Pause Timer")
                        }, label: {
                            Image("Pause")
                                .resizable()
                                .frame(width: 64, height: 64, alignment: .center)
                        })
                    }
                }
                .padding(48)
                .cornerRadius(SIZE_ICON)
                .background(
                ZStack {
                    Circle()
                        .shadow(color: .white, radius: 10, x: -10, y: -10)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                        .blendMode(.overlay)
                        .frame(width: SIZE_ICON, height: SIZE_ICON)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: SIZE_ICON, height: SIZE_ICON)
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
