//
//  Message.swift
//  Chat App
//
//  Created by Mahesh Adhikari on 2/12/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timeStamp: Date
    
}
