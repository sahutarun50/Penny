//
//  TransactionFilter.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

enum TransactionFilter: String, CaseIterable, Codable, Identifiable {
    case all
    case income
    case expense

    var id: String { rawValue }

    var title: String {
        switch self {
        case .all:
            "All"
        case .income:
            "Income"
        case .expense:
            "Expense"
        }
    }
}
