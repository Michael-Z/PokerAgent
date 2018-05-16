//
//  Session.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class Session: Object {
    dynamic var id = UUID().uuidString
    dynamic var startDate: Date = Date()
    dynamic var endDate: Date? = nil
    dynamic var location: String = ""
    dynamic var handsObserved: Int16 = 0
    dynamic var chipPosition: Int8 = 0
    dynamic var playerSessions: [String] = []
    
    convenience init(location: String, playerSessions: [String]) {
        self.init()
        self.location = location
        self.playerSessions = playerSessions
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
