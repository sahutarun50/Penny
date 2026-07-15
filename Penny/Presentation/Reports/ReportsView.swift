//
//  ReportsView.swift
//  Penny
//
//  Created by Tarun Sahu on 15/07/26.
//

import SwiftUI

struct ReportsView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                title: "No reports yet",
                message: "Your spending and income insights will appear here.",
                systemImage: "chart.pie.fill"
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Reports")
        }
    }
}

#Preview {
    ReportsView()
}
