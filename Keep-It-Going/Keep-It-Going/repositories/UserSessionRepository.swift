//
//  UserSessionRepository.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/15/21.
//

import Foundation

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class UserRepository: ObservableObject {
    private let path: String = "users"
    private let store = Firestore.firestore()
    
    @Published var users: [UserSession] = []
    
    func addUser(_ user: UserSession){
        do {
            let newUser = user
          _ = try store.collection(path).addDocument(from: newUser)
        } catch {
          fatalError("Unable to add card: \(error.localizedDescription).")
        }
      }


}
