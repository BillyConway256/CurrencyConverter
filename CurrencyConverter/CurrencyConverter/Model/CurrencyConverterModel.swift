//
//  CurrencyConverterModel.swift
//  CurrencyConverter
//
//  Created by Billy Conway on 2/20/25.
//

import Foundation

struct CurrencyConverterModel {
    
    // Example fixed conversion rates relative to USD
    let currency1Rate: Double = 0.90   // e.g., 1 USD = 0.90 for Currency1
    let currency2Rate: Double = 0.80   // e.g., 1 USD = 0.80 for Currency2
    let currency3Rate: Double = 109.0  // e.g., 1 USD = 109 for Currency3
    let currency4Rate: Double = 1.40   // e.g., 1 USD = 1.40 for Currency4
    
    func convert(amountInUSD: Int, to rate: Double) -> Double {
        return Double(amountInUSD) * rate
    }
}
