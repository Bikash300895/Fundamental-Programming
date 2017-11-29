//
//  AuthService.swift
//  BreakPoint
//
//  Created by Shuvendu Bikash on 30/11/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import Foundation
import Firebase

class AuthService{
    static let instance = AuthService()
    
    func registerUser(withEmail email:String, andPassword password: String, userCreationComplete: @escaping(_ status: Bool, _ error: Error) -> ()){
        
    }
    
    func loginUser(withEmail email:String, andPassword password: String, loginComplere: @escaping(_ status: Bool, _ error: Error) -> ()){
        
    }
}
