//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation
import Vapor

struct FileRecord : Content {
    public var id: String
    public var kind: String
    public var mimeType: String
    public var name: String
}

