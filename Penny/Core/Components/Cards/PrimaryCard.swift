//
//  PrimaryCard.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct PrimaryCard<Content: View>: View {
    private let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content
            .padding(AppSpacing.md)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color("Colors/Surface"))
            .clipShape(RoundedRectangle(cornerRadius: AppCornerRadius.large))
            .shadow(
                color: AppShadow.card.color,
                radius: AppShadow.card.radius,
                x: AppShadow.card.x,
                y: AppShadow.card.y
            )
    }
}

#Preview {
    PrimaryCard {
        VStack(alignment: .leading, spacing: AppSpacing.xs) {
            Text("Monthly Balance")
                .font(.headline)
            Text("$2,450.00")
                .font(.title2)
                .bold()
        }
    }
    .padding()
}
