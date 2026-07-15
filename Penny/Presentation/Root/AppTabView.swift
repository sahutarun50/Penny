//
//  AppTabView.swift
//  Penny
//
//  Created by Tarun Sahu on 15/07/26.
//

import SwiftUI

struct AppTabView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label(AppTab.home.title, systemImage: AppTab.home.systemImage)
                }
                .tag(AppTab.home)

            ReportsView()
                .tabItem {
                    Label(AppTab.reports.title, systemImage: AppTab.reports.systemImage)
                }
                .tag(AppTab.reports)

            TransactionsView()
                .tabItem {
                    Label(AppTab.transactions.title, systemImage: AppTab.transactions.systemImage)
                }
                .tag(AppTab.transactions)

            SettingsView()
                .tabItem {
                    Label(AppTab.settings.title, systemImage: AppTab.settings.systemImage)
                }
                .tag(AppTab.settings)
        }
        .tint(AppColors.primary)
    }
}

#Preview {
    AppTabView()
}
