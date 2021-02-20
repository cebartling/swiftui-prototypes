//
//  Constants.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/19/21.
//

import SwiftUI

let players: [Player] = Bundle.main.decode("players.json")

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

// Computed property (cannot be a let constant)
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

