//
//  MonthlySummary.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

struct MonthlySummary: Identifiable, Codable, Equatable, Hashable {
    var id: String { "\(year)-\(month)" }

    let month: Int
    let year: Int
    var income: Decimal
    var expense: Decimal

    var balance: Decimal {
        income - expense
    }

    init(
        month: Int,
        year: Int,
        income: Decimal = 0,
        expense: Decimal = 0
    ) {
        self.month = month
        self.year = year
        self.income = income
        self.expense = expense
    }
}
