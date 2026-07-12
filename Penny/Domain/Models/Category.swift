//
//  Category.swift
//  Penny
//
//  Created by Tarun Sahu on 12/07/26.
//

import Foundation

struct Category: Identifiable, Codable, Equatable, Hashable {
    let id: UUID
    var name: String
    var type: CategoryType
    var iconName: String
    var colorName: String

    init(
        id: UUID = UUID(),
        name: String,
        type: CategoryType,
        iconName: String,
        colorName: String
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.iconName = iconName
        self.colorName = colorName
    }
}
