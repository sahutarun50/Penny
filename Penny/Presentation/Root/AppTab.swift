//
//  AppTab.swift
//  Penny
//
//  Created by Tarun Sahu on 15/07/26.
//

import SwiftUI

enum AppTab: Hashable, CaseIterable {
    case home
    case reports
    case transactions
    case settings

    var title: String {
        switch self {
        case .home:
            "Home"
        case .reports:
            "Reports"
        case .transactions:
            "Transactions"
        case .settings:
            "Settings"
        }
    }

    var systemImage: String {
        switch self {
        case .home:
            "house.fill"
        case .reports:
            "chart.pie.fill"
        case .transactions:
            "arrow.left.arrow.right"
        case .settings:
            "gearshape.fill"
        }
    }
}
