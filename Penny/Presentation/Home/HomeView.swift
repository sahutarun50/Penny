//
//  HomeView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()

    var body: some View {

        NavigationStack {
            HomeHeaderView()

            ScrollView {
                LazyVStack(spacing: AppSpacing.lg) {
                    
                    MonthSelectorView(month: "July 2026") {
                        
                    } onNext: {
                        
                    }

                    BalanceCardView(
                        balance: viewModel.account.balance,
                        monthlyBalance: viewModel.monthlyBalance,
                        currency: viewModel.account.currency
                    )

                    HStack(spacing: AppSpacing.md) {
                        
                        TransactionActionButtonView(
                            title: "Money In",
                            systemImage: "plus",
                            backgroundColor: AppColors.income,
                            foregroundColor: AppColors.onPrimary
                        ) {

                        }

                        TransactionActionButtonView(
                            title: "Money Out",
                            systemImage: "minus",
                            backgroundColor: AppColors.expense,
                            foregroundColor: AppColors.onPrimary
                        ) {

                        }
                    }
                    
                    RecentTransactionsHeaderView()
                    
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
                            currency: .inr
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
                            currency: .inr
                        )
                    }
                    .background(AppColors.background)
                    
                    ShowAllTransactionsButton {
                        print("Show all trancitiohjns tapped")
                    }
                }
                .padding(AppSpacing.md)
            }
            .background(AppColors.background)
            .navigationTitle("Penny")
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    HomeView()
}
