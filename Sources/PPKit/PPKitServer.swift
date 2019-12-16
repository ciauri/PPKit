//
//  File.swift
//  
//
//  Created by Stephen Ciauri on 12/16/19.
//

import Foundation

public class PPKitServer {
    let url: URL
    
    var structuresURL: URL {
        return url.appendingPathComponent("structures")
    }
    
    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        if #available(OSX 10.12, iOS 11, *) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }()
    
    public init(with url: URL) {
        self.url = url
    }
    
    public func fetchStructures(completion: @escaping (Result<[PPKStructure], Error>) -> Void) {
        URLSession.shared.dataTask(with: structuresURL) { data, response, error in
            if let error = error {
                return completion(.failure(error))
            } else if let data = data {
                do {
                    let structures = try self.decoder.decode([PPKStructure].self, from: data)
                    completion(.success(structures))
                } catch {
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
