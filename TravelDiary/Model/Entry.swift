//
//  Entry.swift
//  TravelDiary
//
//  Created by Jake Gloschat on 2/9/23.
//

import Foundation

class Entry {
    let title: String
    let address: String
    let entryDate: Date
    let body: String
    
    init(title: String, address: String, entryDate: Date, body: String) {
    self.title = title
    self.address = address
    self.entryDate = entryDate
    self.body = body
    
    }
} // End of class
