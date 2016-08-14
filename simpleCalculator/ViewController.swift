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
        let number1 = Double(number1TextField.doubleValue)
        let number2 = Double(number2TextField.doubleValue)
        //      Creating the variable outcome
        var outcome = Double()
        //      Selected item is now equal to the currently selected title from the popup button
        selectedItem = operationPopupButton.selectedItem!.title
        print(number1, number2)
        print(selectedItem)
        
        if selectedItem == "Add"
        {
            outcome = Double(number1 + number2)
        }
        else if selectedItem == "Subtract"
        {
            outcome = Double(number1 - number2)
        }
        else if selectedItem == "Multiply"
        {
            outcome = Double(number1 * number2)
        }
        else if selectedItem == "Divide"
        {
            outcome = Double(number1 / number2)
        }
        func roundToPlaces(value: Double, decimalPlaces: Int) -> Double {
            let divisor = pow(10.0, Double(decimalPlaces))
            return round(value * divisor) / divisor
        }
        
        //      Displaying the outcome inside the productLabel Textfield
        productLabel.doubleValue = outcome
        print(outcome)
    }
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}