//
//  HomeViewModel.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation
import Observation

@MainActor
@Observable
final class HomeViewModel {
    var selectedMonth: Date
    private(set) var account: Account
    private(set) var categories: [Category]
    private(set) var transactions: [Transaction]

    init(
        selectedMonth: Date = .now,
        account: Account = Account(name: "Main Account", balance: 4850, currency: .usd),
        categories: [Category] = HomeViewModel.sampleCategories,
        transactions: [Transaction] = HomeViewModel.sampleTransactions
    ) {
        self.selectedMonth = selectedMonth
        self.account = account
        self.categories = categories
        self.transactions = transactions
    }

    var monthlyTransactions: [Transaction] {
        transactions
            .filter { Calendar.current.isDate($0.date, equalTo: selectedMonth, toGranularity: .month) }
            .sorted { $0.date > $1.date }
    }

    var recentTransactions: [Transaction] {
        Array(monthlyTransactions.prefix(5))
    }

    var monthlyIncome: Decimal {
        monthlyTransactions
            .filter { $0.type == .income }
            .map(\.amount)
            .reduce(0, +)
    }

    var monthlyExpense: Decimal {
        monthlyTransactions
            .filter { $0.type == .expense }
            .map(\.amount)
            .reduce(0, +)
    }

    var monthlyBalance: Decimal {
        monthlyIncome - monthlyExpense
    }

    func category(for transaction: Transaction) -> Category? {
        categories.first { $0.id == transaction.categoryID }
    }

    func moveToPreviousMonth() {
        selectedMonth = Calendar.current.date(byAdding: .month, value: -1, to: selectedMonth) ?? selectedMonth
    }

    func moveToNextMonth() {
        selectedMonth = Calendar.current.date(byAdding: .month, value: 1, to: selectedMonth) ?? selectedMonth
    }
}

private extension HomeViewModel {
    static let salaryCategoryID = UUID(uuidString: "11111111-1111-1111-1111-111111111111") ?? UUID()
    static let groceriesCategoryID = UUID(uuidString: "22222222-2222-2222-2222-222222222222") ?? UUID()
    static let transportCategoryID = UUID(uuidString: "33333333-3333-3333-3333-333333333333") ?? UUID()
    static let accountID = UUID(uuidString: "44444444-4444-4444-4444-444444444444") ?? UUID()

    static let sampleCategories = [
        Category(
            id: salaryCategoryID,
            name: "Salary",
            type: .income,
            iconName: "banknote",
            colorName: "Income"
        ),
        Category(
            id: groceriesCategoryID,
            name: "Groceries",
            type: .expense,
            iconName: "cart",
            colorName: "Expense"
        ),
        Category(
            id: transportCategoryID,
            name: "Transport",
            type: .expense,
            iconName: "car",
            colorName: "Warning"
        )
    ]

    static let sampleTransactions = [
        Transaction(
            title: "Salary",
            amount: 5200,
            type: .income,
            date: .now,
            categoryID: salaryCategoryID,
            accountID: accountID
        ),
        Transaction(
            title: "Groceries",
            amount: 86.45,
            type: .expense,
            date: .now,
            categoryID: groceriesCategoryID,
            accountID: accountID
        ),
        Transaction(
            title: "Metro card",
            amount: 24,
            type: .expense,
            date: .now,
            categoryID: transportCategoryID,
            accountID: accountID
        )
    ]
}
