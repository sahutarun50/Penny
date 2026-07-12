//
//  CategoryType.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

enum CategoryType: String, CaseIterable, Codable, Identifiable {
    case income
    case expense

    var id: String { rawValue }

    var title: String {
        switch self {
        case .income:
            "Income"
        case .expense:
            "Expense"
        }
    }
}
