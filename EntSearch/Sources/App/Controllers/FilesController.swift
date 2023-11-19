//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation
import Vapor

struct FilesController : RouteCollection {
    func boot (routes: RoutesBuilder) throws {
        let files = routes.grouped("files")
        files.get(use: getFiles)
    }
    
    func getFiles(req: Request) async throws -> [FileRecord] {
        let fqp = try req.query.decode(FileQueryParams.self)
        
        // email is required; can't be nil or empty
        if fqp.email == nil || fqp.email!.isEmpty {
            throw Abort(.badRequest)
        }
        
        let reqEmail = fqp.email!
        let reqFolder = fqp.folder ?? ""

        return []
    }
}
