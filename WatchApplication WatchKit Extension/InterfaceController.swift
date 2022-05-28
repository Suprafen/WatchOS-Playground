//
//  InterfaceController.swift
//  WatchApplication WatchKit Extension
//
//  Created by Ivan Pryhara on 28.05.22.
//

import WatchKit
import Foundation

// MARK: Model

struct Model {
    var labelText = "abc"
    var buttonText = "123"
}


class InterfaceController: WKInterfaceController {


    @IBOutlet var watchTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        configureView()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        
    }
    
    func configureView() {
        let items = [
            Model(labelText: "New", buttonText: "Table"),
            Model(labelText: "Made", buttonText: "For"),
            Model(labelText: "Couple", buttonText: "Of minutes"),
            Model(labelText: "New", buttonText: "Table"),
            Model(labelText: "Made", buttonText: "For"),
            Model(labelText: "Couple", buttonText: "Of minutes"),
            Model(labelText: "New", buttonText: "Table"),
            Model(labelText: "Made", buttonText: "For"),
            Model(labelText: "Couple", buttonText: "Of minutes")
        ]
        
        watchTable.setNumberOfRows(items.count, withRowType: "RowControllerType")
        
        for (index, item) in items.enumerated() {
            
            let row = watchTable.rowController(at: index) as! RowController
            row.label.setText(item.labelText)
            row.button.setTitle(item.buttonText)
        }
        
    }

}


class RowController: NSObject{
    @IBOutlet var label: WKInterfaceLabel!
    @IBOutlet var button: WKInterfaceButton!
    
}
