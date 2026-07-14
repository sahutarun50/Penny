//
//  SummaryCardView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct TransactionActionButtonView: View {

    // MARK: - Properties

    let title: String
    let systemImage: String
    let backgroundColor: Color
    let foregroundColor: Color
    let action: () -> Void

    // MARK: - Body

    var body: some View {
        Button(action: action) {
            HStack(spacing: AppSpacing.sm) {

                Circle()
                    .fill(foregroundColor.opacity(0.15))
                    .frame(width: 28, height: 28)
                    .overlay {
                        Image(systemName: systemImage)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundStyle(foregroundColor)
                    }

                Text(title)
                    .font(AppTypography.cardTitle)
                    .foregroundStyle(foregroundColor)

                Spacer()
            }
            .padding(.horizontal, AppSpacing.md)
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(backgroundColor)
            .clipShape(
                RoundedRectangle(
                    cornerRadius: AppCornerRadius.medium
                )
            )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: AppSpacing.md) {

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
    .padding()
    .background(AppColors.background)
}
