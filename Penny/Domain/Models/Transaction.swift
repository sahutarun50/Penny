//
//  Transaction.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

struct Transaction: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var title: String
    var amount: Decimal
    var type: TransactionType
    var date: Date
    var categoryID: UUID
    var accountID: UUID
    var note: String?

    init(
        id: UUID = UUID(),
        title: String,
        amount: Decimal,
        type: TransactionType,
        date: Date = .now,
        categoryID: UUID,
        accountID: UUID,
        note: String? = nil
    ) {
        self.id = id
        self.title = title
        self.amount = amount
        self.type = type
        self.date = date
        self.categoryID = categoryID
        self.accountID = accountID
        self.note = note
    }
}
