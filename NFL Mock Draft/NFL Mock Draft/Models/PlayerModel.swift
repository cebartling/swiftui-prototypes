//
//  PlayerModel.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/12/21.
//

import Foundation

struct Player: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let position: String
    let heightInCentimeters: Double
    let weightInKilograms: Double
    let pros: [String]
    let cons: [String]

    var fullName: String { return "\(lastName), \(firstName)" }
    var formattedHeight: String { return "\(heightInCentimeters) cm" }
    var formattedWeight: String { return "\(weightInKilograms) kg" }
}
