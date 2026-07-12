//
//  LaunchView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct LaunchView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

//#Preview {
//    LaunchView()
//}


struct ColorPaletteView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ColorRow(title: "Primary", color: AppColors.primary)
                ColorRow(title: "Secondary", color: AppColors.secondary)
                ColorRow(title: "Income", color: AppColors.income)
                ColorRow(title: "Expense", color: AppColors.expense)
                ColorRow(title: "Surface", color: AppColors.surface)
                ColorRow(title: "Background", color: AppColors.background)
            }
            .padding()
        }
    }
}

private struct ColorRow: View {
    let title: String
    let color: Color

    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(color)
                .frame(width: 60, height: 40)

            Text(title)

            Spacer()
        }
    }
}

#Preview {
    ColorPaletteView()
}
