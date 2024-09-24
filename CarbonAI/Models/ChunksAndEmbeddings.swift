//
// ChunksAndEmbeddings.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ChunksAndEmbeddings: Codable, JSONEncodable, Hashable {

    public var chunkNumber: Int?
    public var chunk: String
    public var embedding: [Double]?

    public init(chunkNumber: Int?, chunk: String, embedding: [Double]? = nil) {
        self.chunkNumber = chunkNumber
        self.chunk = chunk
        self.embedding = embedding
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case chunkNumber = "chunk_number"
        case chunk
        case embedding
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(chunkNumber, forKey: .chunkNumber)
        try codingContainer.encode(chunk, forKey: .chunk)
        try codingContainer.encodeIfPresent(embedding, forKey: .embedding)
    }
}

