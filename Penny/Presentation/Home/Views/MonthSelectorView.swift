//
//  MonthSelectorView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct MonthSelectorView: View {

    // MARK: - Properties

    let month: String
    let onPrevious: () -> Void
    let onNext: () -> Void

    // MARK: - Body

    var body: some View {
        HStack {
            Button(action: onPrevious) {
                Image(systemName: "chevron.left")
                    .foregroundStyle(AppColors.textPrimary)
            }

            Spacer()

            Text(month)
                .font(AppTypography.sectionTitle)
                .foregroundStyle(AppColors.textPrimary)

            Spacer()

            Button(action: onNext) {
                Image(systemName: "chevron.right")
                    .foregroundStyle(AppColors.textPrimary)
            }
        }
        .padding(.horizontal, AppSpacing.md)
        .padding(.vertical, AppSpacing.sm)
    }
    
}

#Preview {
    MonthSelectorView(
        month: "July 2026",
        onPrevious: {},
        onNext: {}
    )
}
