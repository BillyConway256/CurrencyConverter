//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Billy Conway on 2/20/25.
//

import UIKit

class MainViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var currency1Switch: UISwitch!
    @IBOutlet weak var currency2Switch: UISwitch!
    @IBOutlet weak var currency3Switch: UISwitch!
    @IBOutlet weak var currency4Switch: UISwitch!
    
    //  Properties
    let converterModel = CurrencyConverterModel()
    
    // View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }
    
    // IBActions
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        // 1. Validate user input
        guard let text = usdTextField.text,
              let usdAmount = Int(text),
              usdAmount >= 0 else {
            // Invalid input
            errorLabel.text = "Please enter a valid integer."
            errorLabel.isHidden = false
            return
        }
        
        // Valid input
        errorLabel.isHidden = true
        
        // 2. Perform segue if at least one switch is ON
        //    (You can decide whether to allow no switches, or handle it differently)
        if currency1Switch.isOn || currency2Switch.isOn || currency3Switch.isOn || currency4Switch.isOn {
            performSegue(withIdentifier: "showResultsSegue", sender: usdAmount)
        } else {
            errorLabel.text = "Please select at least one currency."
            errorLabel.isHidden = false
        }
    }
    
    // Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResultsSegue" {
            if let destinationVC = segue.destination as? ResultsViewController,
               let usdAmount = sender as? Int {
                
                // Pass the necessary data
                destinationVC.usdAmount = usdAmount
                destinationVC.currency1Selected = currency1Switch.isOn
                destinationVC.currency2Selected = currency2Switch.isOn
                destinationVC.currency3Selected = currency3Switch.isOn
                destinationVC.currency4Selected = currency4Switch.isOn
            }
        }
    }
}


