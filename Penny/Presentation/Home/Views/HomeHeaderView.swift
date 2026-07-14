//
//  HomeHeaderView.swift
//  Penny
//
//  Created by Tarun Sahu on 13/07/26.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Penny")
                .font(AppTypography.amountSmall)
                .foregroundColor(AppColors.primary)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeHeaderView()
}
