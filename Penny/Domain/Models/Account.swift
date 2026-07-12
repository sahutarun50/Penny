//
//  Account.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

struct Account: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var name: String
    var balance: Decimal
    var currency: Currency
    var createdAt: Date

    init(
        id: UUID = UUID(),
        name: String,
        balance: Decimal = 0,
        currency: Currency = .usd,
        createdAt: Date = .now
    ) {
        self.id = id
        self.name = name
        self.balance = balance
        self.currency = currency
        self.createdAt = createdAt
    }
}
