//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 17.03.2020.
//

import Vapor

struct ProductInput: Content {
    let name: String
    let description: String
    let price: Int
    let categoryId: Int
}
