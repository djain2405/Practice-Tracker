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
    @State var secs: Int = 0
    @State var mins: Int = 0
    @State var timer: Timer? = nil

    
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
                            startTimer()
                            print("Start Timer")
                        }, label: {
                            Image("Play")
                                .resizable()
                                .frame(width: 64, height: 64, alignment: .center)
                        })
                    } else {
                        Button(action: {
                            self.timerIsPaused.toggle()
                            stopTimer()
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
                Text(String(format: "%02d", self.mins)+":"+String(format: "%02d", self.secs))
                    .bold()
                    .padding()
                    .foregroundColor(.blue)
                    .font(.title)
                    
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
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { tempTimer in
        
            if self.secs ==  59 {
                self.secs = 0
                self.mins = self.mins + 1
            } else {
                self.secs = self.secs + 1
            }
      }
    }
    
    func stopTimer(){
      timer?.invalidate()
      timer = nil
    }
}

struct PracticeTimerView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeTimerView()
    }
}
