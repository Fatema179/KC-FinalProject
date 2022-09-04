//
//  MRModel.swift
//  final_project
//
//  Created by Zeinab H Eldeeb on 01/09/2022.
//

import Foundation
struct MRModel: Identifiable{
    let id = UUID()
    var pillName: String
    var amount: Int
    var howLong: Int
    var times: Int
    var breakfast: String
    var lunch: String
    var dinner: String
    var notification: String
    var dayNight: String

}
