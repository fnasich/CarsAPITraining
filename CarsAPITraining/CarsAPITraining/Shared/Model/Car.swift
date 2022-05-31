//
//  Car.swift
//  CarsAPITraining
//
//  Created by Francisco Tomas Nasich on 28/05/2022.
//

import Foundation

struct Car: Decodable {
    let id: String
    let plate: String
    let name: String
    let des: String
}
