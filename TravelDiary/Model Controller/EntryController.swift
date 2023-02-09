//
//  EntryController.swift
//  TravelDiary
//
//  Created by Jake Gloschat on 2/9/23.
//

import Foundation

class EntryController {
    
    // MARK: - Singelton
    /// Singleton: To ensure that we are interacting with the *SAME* instance of our *entries* array we created a singleton to pass around this specific instance of our **EntryController**
    static let sharedInstance = EntryController()
    
    // MARK: - Source of Truth
    /// Source of Truth: The single location we will store our **Entry** data.
    var entries: [Entry] = [] // This is the ARRAY that I am going to move around the app, to control my data
    
    // MARK: - CRUD Functions
    func create(title: String, addy: String, body: String) {
        let entry = Entry(title: title, address: addy, body: body)
        // Adding it to the SOT
        entries.append(entry)
        save()
    }
    
    func update(entryToUpdate: Entry, newTitle: String, newAddress: String, newBody: String) {
        entryToUpdate.title = newTitle
        entryToUpdate.address = newAddress
        entryToUpdate.body = newBody
        save()
        
    }
    
    func delete(entryToDelete: Entry) {
        guard let index = entries.firstIndex(of: entryToDelete) else {return}
        entries.remove(at: index)
        save ()
    }
    
    // MARK: - Persistence
    
    func save() {
        
        
    }
    func load () {
        
    }
    
    
} // End of Class



