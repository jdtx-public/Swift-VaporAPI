//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation
import Vapor

struct DriveQueryResponse : Content {
    var id: String
    var kind: String
    var name: String
}
