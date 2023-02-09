//
//  EntryDetailViewController.swift
//  TravelDiary
//
//  Created by Jake Gloschat on 2/9/23.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var entryDateLabel: UILabel!
    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var entryAddressTextField: UITextField!
    @IBOutlet weak var entryBodyTextView: UITextView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    // MARK: - Properties
    var entryReciever: Entry?
    
    // MARK: - Helper Functions
    func updateView() {
        guard let entryReciever = entryReciever else {return}
        entryTitleTextField.text = entryReciever.title
        entryAddressTextField.text = entryReciever.address
        entryDateLabel.text = entryReciever.entryDate.stringValue()
        entryBodyTextView.text = entryReciever.body
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = entryTitleTextField.text,
              let address = entryAddressTextField.text,
              let body = entryBodyTextView.text else {return}
        
        EntryController.sharedInstance.create(title: title, addy: address, body: body)
        navigationController?.popViewController(animated: true)
    }
    
} // End of Clas




