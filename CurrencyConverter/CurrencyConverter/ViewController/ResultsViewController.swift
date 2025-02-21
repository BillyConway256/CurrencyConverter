//
//  ResultsViewController.swift
//  CurrencyConverter
//
//  Created by Billy Conway on 2/20/25.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var usdAmountLabel: UILabel!
    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency4Label: UILabel!
   
    @IBOutlet weak var Currency1: UILabel!
    
    @IBOutlet weak var Currency2: UILabel!
    
    @IBOutlet weak var Currency3: UILabel!
    @IBOutlet weak var Currency4: UILabel!
    
    // Properties
    var usdAmount: Int = 0
    var currency1Selected: Bool = false
    var currency2Selected: Bool = false
    var currency3Selected: Bool = false
    var currency4Selected: Bool = false
    
    private let converterModel = CurrencyConverterModel()
    
    // View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Show the USD amount
        usdAmountLabel.text = "Amount in USD: \(usdAmount)"
        
        // 2. Convert for each currency if selected
        if currency1Selected {
            let convertedValue = converterModel.convert(amountInUSD: usdAmount, to: converterModel.currency1Rate)
            currency1Label.text = String(format: "Currency 1: %.2f", convertedValue)
            currency1Label.isHidden = false
        } else {
            currency1Label.isHidden = true
            Currency1.isHidden = true
        }
        
        if currency2Selected {
            let convertedValue = converterModel.convert(amountInUSD: usdAmount, to: converterModel.currency2Rate)
            currency2Label.text = String(format: "Currency 2: %.2f", convertedValue)
            currency2Label.isHidden = false
        } else {
            currency2Label.isHidden = true
            Currency2.isHidden = true
        }
        
        if currency3Selected {
            let convertedValue = converterModel.convert(amountInUSD: usdAmount, to: converterModel.currency3Rate)
            currency3Label.text = String(format: "Currency 3: %.2f", convertedValue)
            currency3Label.isHidden = false
        } else {
            currency3Label.isHidden = true
            Currency3.isHidden = true
        }
        
        if currency4Selected {
            let convertedValue = converterModel.convert(amountInUSD: usdAmount, to: converterModel.currency4Rate)
            currency4Label.text = String(format: "Currency 4: %.2f", convertedValue)
            currency4Label.isHidden = false
        } else {
            currency4Label.isHidden = true
            Currency4.isHidden = true
        }
    }
}
