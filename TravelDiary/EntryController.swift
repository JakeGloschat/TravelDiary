//
//  EntryController.swift
//  TravelDiary
//
//  Created by Jake Gloschat on 2/9/23.
//

import Foundation

class EntryController {
    
    // MARK: - Singelton
    static let sharedInstance = EntryController()
    // MARK: - Source of Truth
    var entries: [Entry] = [] // This is the ARRAY that I am going to move around the app, to control my data
    // MARK: - CRUD Functions
    func create() {
        save()
        
    }
    
    func update() {
        save()
        
    }
    
    func delete() {
        save ()
    }
    
    // MARK: - Persistence
    
    func save() {
        
        
    }
    func load () {
        
    }
    
    
} // End of Class



