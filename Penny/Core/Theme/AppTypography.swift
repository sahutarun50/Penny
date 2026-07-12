//
//  AppTypography.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

/// Defines the typography system used throughout the Penny application.
enum AppTypography {

    // MARK: - Screen

    static let screenTitle: Font = .largeTitle.weight(.bold)
    static let navigationTitle: Font = .title.weight(.semibold)

    // MARK: - Sections

    static let sectionTitle: Font = .title2.weight(.semibold)
    static let cardTitle: Font = .headline

    // MARK: - Amounts

    static let amountLarge: Font = .system(size: 36, weight: .bold)
    static let amountMedium: Font = .title.weight(.bold)
    static let amountSmall: Font = .headline.weight(.semibold)

    // MARK: - Content

    static let body: Font = .body
    static let bodyBold: Font = .body.weight(.semibold)

    static let caption: Font = .caption
    static let footnote: Font = .footnote

    // MARK: - Controls

    static let button: Font = .headline.weight(.semibold)
}
