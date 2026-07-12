//
//  EmptyStateView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct EmptyStateView: View {
    let title: String
    let message: String
    var systemImage = "tray"
    var actionTitle: String?
    var action: (() -> Void)?

    var body: some View {
        VStack(spacing: AppSpacing.md) {
            Image(systemName: systemImage)
                .font(.system(size: 44, weight: .semibold))
                .foregroundStyle(Color("Colors/TextSecondary"))

            VStack(spacing: AppSpacing.xs) {
                Text(title)
                    .font(.headline)
                    .foregroundStyle(Color("Colors/TextPrimary"))

                Text(message)
                    .font(.subheadline)
                    .foregroundStyle(Color("Colors/TextSecondary"))
                    .multilineTextAlignment(.center)
            }

            if let actionTitle, let action {
                PrimaryButton(title: actionTitle, action: action)
                    .frame(maxWidth: 220)
            }
        }
        .padding(AppSpacing.lg)
    }
}

#Preview {
    EmptyStateView(
        title: "No transactions yet",
        message: "Add your first transaction to start tracking your money.",
        systemImage: "creditcard",
        actionTitle: "Add Transaction"
    ) { }
}
