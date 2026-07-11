//
//  AppShadow.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct AppShadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat

    static let subtle = AppShadow(
        color: .black.opacity(0.08),
        radius: 8,
        x: 0,
        y: 4
    )

    static let prominent = AppShadow(
        color: .black.opacity(0.12),
        radius: 16,
        x: 0,
        y: 8
    )
}
