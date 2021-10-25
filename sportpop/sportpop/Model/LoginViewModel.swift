//
//  LoginViewModel.swift
//  sportpop
//
//  Created by Ricardo Hernandez on 11/10/21.
//

import Foundation


protocol LoginFunctionProtocol {
  
  func login(username: String?, password: String?, type: LoginType)
}

protocol LoginResultProtocol: AnyObject {
  func success(user: User?, type: LoginType)
  func error(error: Error, type: LoginType)
}



