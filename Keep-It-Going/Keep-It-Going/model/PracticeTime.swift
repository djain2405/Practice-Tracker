//
//  PracticeTime.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/12/21.
//

import Foundation

class PracticeTime: ObservableObject {
    @Published var minutes: Int {
        didSet {
            UserDefaults.standard.set(minutes, forKey: "minutes")
        }
    }
    
    @Published var seconds: Int {
        didSet {
            UserDefaults.standard.set(seconds, forKey: "seconds")
        }
    }
    
    init() {
        self.minutes = UserDefaults.standard.object(forKey: "minutes") as? Int ?? 0
        self.seconds = UserDefaults.standard.object(forKey: "seconds") as? Int ?? 0
    }
}
