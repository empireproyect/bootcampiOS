//
//  SportpopModel.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 30/9/21.
//

import Foundation

struct User {
    var username: String // es posible que no haga falta, el email es el login
    var password: String
    var email: String
    var displayname: String
    var first_name: String
    var last_name: String
    var photo_url: String
    var social_facebook_id: String
    var social_apple_id: String
}

struct Product {
    var uid: String
    var pid: String
    var price: Double
    var category_description: String
    var category_name: String
    var description: String
    var imagen_detail_url: String
    var photo_url: String
    var title: String
    
}
