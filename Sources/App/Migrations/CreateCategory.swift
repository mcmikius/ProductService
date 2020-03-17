//
//  File.swift
//  
//
//  Created by Mykhailo Bondarenko on 17.03.2020.
//

import Fluent


struct CreateCategory: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("categories")
            .field("id", .int, .identifier(auto: true))
            .field("name", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("categories").delete()
    }
}
