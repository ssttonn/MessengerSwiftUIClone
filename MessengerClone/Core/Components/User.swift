//
//  User.swift
//  MessengerClone
//
//  Created by sstonn on 27/7/24.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullName: String
    let email: String
    var profileImageUrl: String?
    
}

extension User {
    static let MOCK_USER = User(fullName: "Steve Jobs", email: "steve@gmail.com", profileImageUrl: "batman")
}
