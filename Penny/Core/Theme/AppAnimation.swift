//
//  AppAnimation.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

enum AppAnimation {

    static let standard = Animation.easeInOut(duration: 0.25)

    static let spring = Animation.spring(
        response: 0.35,
        dampingFraction: 0.8
    )

    static let bouncy = Animation.bouncy
}
