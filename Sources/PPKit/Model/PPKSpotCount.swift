//
//  SpotCount.swift
//  App
//
//  Created by Stephen Ciauri on 12/6/19.
//

import Foundation

public struct PPKSpotCount: Codable {
    public let id: UUID
    public let levelID: String
    public let availableSpots: Int
    public let timestamp: Date
    
    public init(levelID: String, spots: Int, timestamp: Date) {
        id = UUID()
        self.levelID = levelID
        self.availableSpots = spots
        self.timestamp = timestamp
    }
}
