//
//  AmountText.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct AmountText: View {
    let amount: Double
    var currencyCode = "USD"
    var color: Color = Color("Colors/TextPrimary")

    var body: some View {
        Text(amount, format: .currency(code: currencyCode))
            .font(.headline)
            .foregroundStyle(color)
            .monospacedDigit()
    }
}

#Preview {
    VStack(alignment: .leading, spacing: AppSpacing.md) {
        AmountText(amount: 1250)
        AmountText(amount: -42.5, color: Color("Colors/Expense"))
    }
    .padding()
}
