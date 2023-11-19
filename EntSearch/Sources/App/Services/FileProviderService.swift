//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation
import Vapor

class FileProviderService : FileProvider {
    func homeDrive(forUser: String) -> DriveQueryResponse {
        let userPart = String(forUser.split(separator: "@")[0])
        let dqrName = String(format: "home_%@", userPart)
        let dqrId = String(format: "id_%@", userPart)
        
        return DriveQueryResponse(id: dqrId, kind: "folder", name: dqrName)
    }
}

// DI setup; would replace here with testable elements
extension Application {
    var fileProvider: FileProvider {
        return FileProviderService()
    }
}
