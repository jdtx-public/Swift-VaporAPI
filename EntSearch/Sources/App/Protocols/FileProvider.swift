//
//  File.swift
//  
//
//  Created by Jeff Doar on 11/18/23.
//

import Foundation

protocol FileProvider {
    func homeDrive(forUser: String) -> DriveQueryResponse
}
