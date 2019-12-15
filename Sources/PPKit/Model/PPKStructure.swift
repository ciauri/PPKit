//
//  Structure.swift
//  App
//
//  Created by Stephen Ciauri on 12/5/19.
//

import Foundation

public struct PPKStructure: Linkable {
    public let links: [String:URL]
    public let id: String
    public let name: String
    public let capacity: Int
    public let currentCount: Int
    public let lastUpdated: Date
    public let hiResImageURL: URL?
    public let lowResImageURL: URL?
    public let latitude: Double
    public let longitude: Double
    public let levels: [PPKLevel]
}
