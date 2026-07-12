//
//  SectionHeader.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    var actionTitle: String?
    var action: (() -> Void)?

    var body: some View {
        HStack(spacing: AppSpacing.md) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Color("Colors/TextPrimary"))

            Spacer()

            if let actionTitle, let action {
                Button(actionTitle, action: action)
                    .font(.subheadline.weight(.semibold))
                    .foregroundStyle(Color("Colors/Primary"))
            }
        }
        .padding(.vertical, AppSpacing.xs)
    }
}

#Preview {
    SectionHeader(title: "Recent Transactions", actionTitle: "See All") { }
        .padding()
}
