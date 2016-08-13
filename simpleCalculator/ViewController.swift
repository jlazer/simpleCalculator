//
//  ViewController.swift
//  simpleCalculator
//
//  Created by Justin Lazarski on 8/12/16.
//  Copyright © 2016 Justin Lazarski. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    //  Connecting the IBOutlets.
    @IBOutlet weak var number1TextField: NSTextField!
    @IBOutlet weak var number2TextField: NSTextField!
    @IBOutlet weak var productLabel: NSTextField!
    @IBOutlet weak var operationPopupButton: NSPopUpButton!
    let operationsArray = ["Add", "Subtract", "Multiply", "Divide"]
    var selectedItem = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //      Removing the default items and placing the operations array  into the popup button.
        operationPopupButton.removeAllItems()
        operationPopupButton.addItemsWithTitles(operationsArray)
        operationPopupButton.selectItemAtIndex(0)
    }
    @IBAction func calculateOnTap(sender: NSButton) {
        
        //      Setting the apropriate textfields to the apropirate variable
        let number1 = Float(number1TextField.floatValue)
        let number2 = Float(number2TextField.floatValue)
        //      Creating the variable outcome
        var outcome = Float()
        //      Selected item is now equal to the currently selected title from the popup button
        selectedItem = operationPopupButton.selectedItem!.title
        print(number1, number2)
        print(selectedItem)
        
        if selectedItem == "Add"
        {
            outcome = Float(number1 + number2)
        }
        else if selectedItem == "Subtract"
        {
            outcome = Float(number1 - number2)
        }
        else if selectedItem == "Multiply"
        {
            outcome = Float(number1 * number2)
        }
        else if selectedItem == "Divide"
        {
            outcome = Float(number1 / number2)
        }
        //      Displaying the outcome inside the productLabel Textfield
        productLabel.floatValue = outcome
        print(outcome)
    }
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}