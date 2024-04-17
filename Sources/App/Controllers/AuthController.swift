//
//  File.swift
//  
//
//  Created by Saurav Nagpal on 09/04/24.
//

import Foundation
import Vapor

struct LoginResponse: Content {
    let isSuccess: Bool
    let error: [String: String]
}
