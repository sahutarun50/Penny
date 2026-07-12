//
//  AppShadow.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

struct AppShadowStyle {

    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat
}

enum AppShadow {

    static let card = AppShadowStyle(
        color: .black.opacity(0.08),
        radius: 8,
        x: 0,
        y: 2
    )

    static let floating = AppShadowStyle(
        color: .black.opacity(0.15),
        radius: 12,
        x: 0,
        y: 6
    )
}
