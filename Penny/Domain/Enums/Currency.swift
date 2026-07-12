//
//  Currency.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

enum Currency: String, CaseIterable, Codable, Identifiable {
    case usd = "USD"
    case inr = "INR"
    case eur = "EUR"
    case gbp = "GBP"

    var id: String { rawValue }

    var code: String { rawValue }

    var symbol: String {
        switch self {
        case .usd:
            "$"
        case .inr:
            "₹"
        case .eur:
            "€"
        case .gbp:
            "£"
        }
    }
}
