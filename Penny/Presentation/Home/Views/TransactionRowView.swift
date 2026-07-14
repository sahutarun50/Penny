//
//  TransactionRowView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct TransactionRowView: View {

    // MARK: - Properties

    let transaction: Transaction
    let category: Category?
    let currency: Currency

    // MARK: - Computed Properties

    private var amountColor: Color {
        transaction.type == .income
        ? AppColors.income
        : AppColors.expense
    }

    private var signedAmount: String {
        let prefix = transaction.type == .income ? "+" : "-"
        return prefix + currencyString(for: transaction.amount)
    }

    private var formattedDate: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter.string(from: transaction.date)
    }

    // MARK: - Body

    var body: some View {
        HStack(spacing: AppSpacing.md) {

            categoryIcon

            transactionInfo

            Spacer()

            amountInfo
        }
        .padding(.horizontal, AppSpacing.md)
        .padding(.vertical, AppSpacing.sm)
        .frame(maxWidth: .infinity)
    }

    private func currencyString(for amount: Decimal) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currency.code
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2

        return formatter.string(from: amount as NSDecimalNumber) ?? "\(amount)"
    }
}

// MARK: - Subviews

private extension TransactionRowView {

    var categoryIcon: some View {
        Circle()
            .fill(amountColor)
            .frame(width: 44, height: 44)
            .overlay {
                Image(systemName: category?.iconName ?? "circle.grid.2x2")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(AppColors.onPrimary)
            }
    }

    var transactionInfo: some View {
        VStack(alignment: .leading, spacing: AppSpacing.xxs) {
            Text(transaction.title)
                .font(AppTypography.body)
                .foregroundStyle(AppColors.textPrimary)
                .lineLimit(1)

            Text(category?.name ?? transaction.type.title)
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)
                .lineLimit(1)
        }
    }

    var amountInfo: some View {
        VStack(alignment: .trailing, spacing: AppSpacing.xxs) {

            Text(signedAmount)
                .font(AppTypography.amountSmall)
                .foregroundStyle(amountColor)

            Text(formattedDate)
                .font(AppTypography.caption)
                .foregroundStyle(AppColors.textSecondary)
        }
    }
}

// MARK: - Preview

#Preview {
    let expenseCategoryID = UUID()
    let incomeCategoryID = UUID()
    let accountID = UUID()

    VStack(spacing: 0) {

        TransactionRowView(
            transaction: Transaction(
                title: "Bills & Utilities",
                amount: 200,
                type: .expense,
                date: .now,
                categoryID: expenseCategoryID,
                accountID: accountID
            ),
            category: Category(
                id: expenseCategoryID,
                name: "Bills & Utilities",
                type: .expense,
                iconName: "bolt.fill",
                colorName: "Expense"
            ),
            currency: .usd
        )

        Divider()

        TransactionRowView(
            transaction: Transaction(
                title: "Freelance",
                amount: 10000,
                type: .income,
                date: .now,
                categoryID: incomeCategoryID,
                accountID: accountID
            ),
            category: Category(
                id: incomeCategoryID,
                name: "Salary",
                type: .income,
                iconName: "briefcase.fill",
                colorName: "Income"
            ),
            currency: .usd
        )
    }
    .padding()
    .background(AppColors.background)
}
