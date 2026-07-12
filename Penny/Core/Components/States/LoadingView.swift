//
//  LoadingView.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct LoadingView: View {
    var title = "Loading"

    var body: some View {
        VStack(spacing: AppSpacing.md) {
            ProgressView()
                .tint(Color("Colors/Primary"))

            Text(title)
                .font(.subheadline)
                .foregroundStyle(Color("Colors/TextSecondary"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Colors/Background"))
    }
}

#Preview {
    LoadingView()
}
