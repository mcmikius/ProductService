//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 17.03.2020.
//

import Vapor
import Fluent

final class Category: Model {
    
    static let schema = "categories"
    
    @ID(key: "id")
    var id: Int?
    
    @Field(key: "name")
    var name: String
    
    init() {
    }
    
    init(name: String) {
        self.name = name
    }
}
