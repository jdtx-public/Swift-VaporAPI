//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation
import Vapor

struct DrivesController : RouteCollection {
    func boot (routes: RoutesBuilder) throws {
        let drives = routes.grouped("drives")
        drives.get(use: getDrive)
    }
    
    func getDrive(req: Request) async throws -> DriveQueryResponse {
        let dqp = try req.query.decode(DriveQueryParams.self)
        
        // email is required; can't be nil or empty
        if dqp.email == nil || dqp.email!.isEmpty {
            throw Abort(.badRequest)
        }
        
        let reqEmail = dqp.email!
        
        let fp = req.application.fileProvider
        
        return fp.homeDrive(forUser: reqEmail)
    }
}
