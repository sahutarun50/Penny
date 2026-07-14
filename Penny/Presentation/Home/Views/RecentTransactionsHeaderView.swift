//
//  RecentTransactionsHeaderView.swift
//  Penny
//
//  Created by Tarun Sahu on 13/07/26.
//

import SwiftUI

struct RecentTransactionsHeaderView: View {
    var body: some View {
        
        HStack(){
            Text("Recent Transactions")
                .font(AppTypography.bodyBold)
                .foregroundStyle(.primary)
            Spacer()
            Text("2 Total")
                .font(AppTypography.bodyBold)
        }
        
    }
}

#Preview {
    RecentTransactionsHeaderView()
}
