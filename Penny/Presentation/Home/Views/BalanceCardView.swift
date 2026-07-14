//
//  BalanceCardView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct BalanceCardView: View {
    let balance: Decimal
    let monthlyBalance: Decimal
    let currency: Currency
    
    var body: some View {
        VStack{
            header
            Divider()
            footer
        }.padding(AppSpacing.lg)
            .frame(maxWidth: .infinity)
            .frame(height: 220)
            .background(AppColors.primary)
            .clipShape(
                RoundedRectangle(cornerRadius: AppCornerRadius.large)
            )
    }
    
    private var header: some View {
        VStack {
            VStack(spacing: AppSpacing.xs){
                Text("Overall Balance")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.onPrimary)
                Text(currencyString(for: balance))
                    .font(AppTypography.amountSmall)
                    .foregroundStyle(AppColors.onPrimary)
                Text("Net Balance")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.onPrimary)
                Text(currencyString(for: monthlyBalance))
                    .font(AppTypography.amountLarge)
                    .foregroundStyle(AppColors.onPrimary)
            }
        }
    }
    
    private var footer: some View {
        HStack{
            VStack{
                Text("MONEY IN")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.onPrimary)
                Text(currencyString(for: monthlyBalance))
                    .font(AppTypography.amountSmall)
                    .foregroundStyle(AppColors.onPrimary)
            }
            Spacer()
            VStack{
                Text("MONEY OUT")
                    .font(AppTypography.caption)
                    .foregroundStyle(AppColors.onPrimary)
                Text(currencyString(for: monthlyBalance))
                    .font(AppTypography.amountSmall)
                    .foregroundStyle(AppColors.onPrimary)
                
            }
            
        }
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

#Preview {
    BalanceCardView(balance: 4850, monthlyBalance: 1200, currency: .inr)
        .padding()
}
