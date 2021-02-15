//
//  PlayerModel.swift
//  NFL Mock Draft
//
//  Created by Christopher Bartling on 2/12/21.
//

import Foundation

struct Player: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var position: String
}
