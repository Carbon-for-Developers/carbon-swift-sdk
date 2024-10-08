//
// EmbeddingsAndChunksResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EmbeddingsAndChunksResponse: Codable, JSONEncodable, Hashable {

    public var results: [EmbeddingAndChunk]
    public var count: Int

    public init(results: [EmbeddingAndChunk], count: Int) {
        self.results = results
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case results
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(results, forKey: .results)
        try codingContainer.encode(count, forKey: .count)
    }
}

