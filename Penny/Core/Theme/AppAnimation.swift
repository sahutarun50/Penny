//
//  AppAnimation.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import SwiftUI

enum AppAnimation {
    static let quick = Animation.easeOut(duration: 0.2)
    static let standard = Animation.easeInOut(duration: 0.3)
    static let slow = Animation.easeInOut(duration: 0.5)
}
