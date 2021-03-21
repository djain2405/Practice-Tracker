//
//  UserViewModel.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/20/21.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    
    @Published var userRepository = UserRepository()
    
    func add(_ user: UserSession) {
      userRepository.addUser(user)
    }
    
}
