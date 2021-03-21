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
    @State var timer: Timer? = nil
    @State var practiceEntryView = false
    
    @ObservedObject var practiceTime = PracticeTime()

    var body: some View {
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
                Text(String(format: "%02d", self.practiceTime.minutes)+":"+String(format: "%02d", self.practiceTime.seconds))
                    .bold()
                    .padding()
                    .foregroundColor(.blue)
                    .font(.title)
                    
                Spacer()
                NavigationLink(
                    destination: PracticeSessionEntryView(), isActive: $practiceEntryView){
                Button(action: {
                    withAnimation{
                        self.practiceEntryView.toggle()
                    }
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
            }
            .padding()
            .padding(.bottom, 32)
        }
    
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { tempTimer in
        
            if self.practiceTime.seconds ==  59 {
                self.practiceTime.seconds = 0
                self.practiceTime.minutes = self.practiceTime.minutes + 1
            } else {
                self.practiceTime.seconds = self.practiceTime.seconds + 1
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
