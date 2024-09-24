//
// EmbeddingModel.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Embedding model that will be used to embed file chunks. */
public struct EmbeddingModel: Codable, JSONEncodable, Hashable {


    public enum CodingKeys: CodingKey, CaseIterable {
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
    }
}

