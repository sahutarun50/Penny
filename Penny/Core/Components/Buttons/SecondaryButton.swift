//
//  SecondaryButton.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct SecondaryButton: View {
    let title: String
    var isDisabled = false
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(isDisabled ? Color.gray : Color("Colors/Primary"))
                .frame(maxWidth: .infinity)
                .padding(.vertical, AppSpacing.md)
                .background(Color("Colors/Surface"))
                .clipShape(RoundedRectangle(cornerRadius: AppCornerRadius.medium))
                .overlay {
                    RoundedRectangle(cornerRadius: AppCornerRadius.medium)
                        .stroke(Color("Colors/Divider"), lineWidth: 1)
                }
        }
        .disabled(isDisabled)
        .buttonStyle(.plain)
    }
}

#Preview {
    SecondaryButton(title: "Cancel") { }
        .padding()
}
