//
//  Level.swift
//  App
//
//  Created by Stephen Ciauri on 12/6/19.
//

import Foundation

public struct PPKLevel: Linkable {
    public let links: [String : URL]
    public let id: String
    public let structureID: String
    public let name: String
    public let systemName: String
    public let capacity: Int
    public let currentCount: Int
}
