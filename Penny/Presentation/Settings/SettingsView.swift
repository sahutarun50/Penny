//
//  SettingsView.swift
//  Penny
//
//  Created by Tarun Sahu on 15/07/26.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            EmptyStateView(
                title: "Settings",
                message: "App preferences will appear here.",
                systemImage: "gearshape.fill"
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(AppColors.background)
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
