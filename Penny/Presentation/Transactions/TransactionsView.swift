//
//  TransactionsView.swift
//  Penny
//
//  Created by Tarun Sahu on 15/07/26.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                title: "No transactions yet",
                message: "Transactions you add will appear here.",
                systemImage: "arrow.left.arrow.right"
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Transactions")
        }
    }
}

#Preview {
    TransactionsView()
}
