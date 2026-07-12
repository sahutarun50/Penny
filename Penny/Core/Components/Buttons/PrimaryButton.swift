//
//  PrimaryButton.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    var isDisabled = false
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, AppSpacing.md)
                .background(isDisabled ? Color.gray : Color("Colors/Primary"))
                .clipShape(RoundedRectangle(cornerRadius: AppCornerRadius.medium))
        }
        .disabled(isDisabled)
        .buttonStyle(.plain)
    }
}

#Preview {
    PrimaryButton(title: "Continue") { }
        .padding()
}
