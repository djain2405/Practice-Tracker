//
//  UserSession.swift
//  Keep-It-Going
//
//  Created by Divya Jain on 3/15/21.
//

import Foundation
import FirebaseFirestoreSwift

struct UserSession: Codable {
    @DocumentID var id: String?
    var name: String
    var username: String
    var password: String
}
