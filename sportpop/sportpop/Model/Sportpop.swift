//
//  SportpopModel.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 30/9/21.
//modifico para que suba al github

import Foundation

// model
 
enum LoginType: String {
    case normal = "Sing normal"
    case test = "Sing testing"
    case google = "Sing Google"
    
    var name: String {
        return self.rawValue
    }
    
}

struct Login {
    var username: String?
    var password: String?
    var token: String?
    
    init(username: String?, password: String?, token: String? = nil) {
        self.username = username
        self.password = password
        self.token = token
    }
}

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

struct Productfirebase {
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


