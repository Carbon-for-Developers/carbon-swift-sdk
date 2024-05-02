//
// FreshDeskConnectRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FreshDeskConnectRequest: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    public var domain: String
    public var apiKey: String
    public var chunkSize: Int? = 1500
    public var chunkOverlap: Int? = 20
    public var skipEmbeddingGeneration: Bool? = false
    public var embeddingModel: EmbeddingGeneratorsNullable?
    public var generateSparseVectors: Bool? = false
    public var prependFilenameToChunks: Bool? = false
    public var syncFilesOnConnection: Bool? = true
    public var requestId: String?
    /** Enabling this flag will fetch all available content from the source to be listed via list items endpoint */
    public var syncSourceItems: Bool? = true

    public init(tags: AnyCodable? = nil, domain: String, apiKey: String, chunkSize: Int? = 1500, chunkOverlap: Int? = 20, skipEmbeddingGeneration: Bool? = false, embeddingModel: EmbeddingGeneratorsNullable? = nil, generateSparseVectors: Bool? = false, prependFilenameToChunks: Bool? = false, syncFilesOnConnection: Bool? = true, requestId: String? = nil, syncSourceItems: Bool? = true) {
        self.tags = tags
        self.domain = domain
        self.apiKey = apiKey
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.embeddingModel = embeddingModel
        self.generateSparseVectors = generateSparseVectors
        self.prependFilenameToChunks = prependFilenameToChunks
        self.syncFilesOnConnection = syncFilesOnConnection
        self.requestId = requestId
        self.syncSourceItems = syncSourceItems
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case domain
        case apiKey = "api_key"
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case embeddingModel = "embedding_model"
        case generateSparseVectors = "generate_sparse_vectors"
        case prependFilenameToChunks = "prepend_filename_to_chunks"
        case syncFilesOnConnection = "sync_files_on_connection"
        case requestId = "request_id"
        case syncSourceItems = "sync_source_items"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encode(domain, forKey: .domain)
        try container.encode(apiKey, forKey: .apiKey)
        try container.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try container.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try container.encodeIfPresent(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try container.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try container.encodeIfPresent(prependFilenameToChunks, forKey: .prependFilenameToChunks)
        try container.encodeIfPresent(syncFilesOnConnection, forKey: .syncFilesOnConnection)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(syncSourceItems, forKey: .syncSourceItems)
    }
}

