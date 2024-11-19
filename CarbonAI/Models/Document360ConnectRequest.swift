//
// Document360ConnectRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Document360ConnectRequest: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    /** This email will be used to identify your carbon data source. It should have access to the          Document360 account you wish to connect. */
    public var accountEmail: String
    public var accessToken: String
    public var chunkSize: Int? = 1500
    public var chunkOverlap: Int? = 20
    public var skipEmbeddingGeneration: Bool? = false
    public var embeddingModel: EmbeddingGenerators?
    public var generateSparseVectors: Bool? = false
    public var prependFilenameToChunks: Bool? = false
    public var syncFilesOnConnection: Bool? = true
    public var requestId: String?
    /** Enabling this flag will fetch all available content from the source to be listed via list items endpoint */
    public var syncSourceItems: Bool? = true
    public var fileSyncConfig: FileSyncConfigNullable?
    /** Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed. */
    public var dataSourceTags: AnyCodable?

    public init(tags: AnyCodable? = nil, accountEmail: String, accessToken: String, chunkSize: Int? = 1500, chunkOverlap: Int? = 20, skipEmbeddingGeneration: Bool? = false, embeddingModel: EmbeddingGenerators? = nil, generateSparseVectors: Bool? = false, prependFilenameToChunks: Bool? = false, syncFilesOnConnection: Bool? = true, requestId: String? = nil, syncSourceItems: Bool? = true, fileSyncConfig: FileSyncConfigNullable? = nil, dataSourceTags: AnyCodable? = nil) {
        self.tags = tags
        self.accountEmail = accountEmail
        self.accessToken = accessToken
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.embeddingModel = embeddingModel
        self.generateSparseVectors = generateSparseVectors
        self.prependFilenameToChunks = prependFilenameToChunks
        self.syncFilesOnConnection = syncFilesOnConnection
        self.requestId = requestId
        self.syncSourceItems = syncSourceItems
        self.fileSyncConfig = fileSyncConfig
        self.dataSourceTags = dataSourceTags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case accountEmail = "account_email"
        case accessToken = "access_token"
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case embeddingModel = "embedding_model"
        case generateSparseVectors = "generate_sparse_vectors"
        case prependFilenameToChunks = "prepend_filename_to_chunks"
        case syncFilesOnConnection = "sync_files_on_connection"
        case requestId = "request_id"
        case syncSourceItems = "sync_source_items"
        case fileSyncConfig = "file_sync_config"
        case dataSourceTags = "data_source_tags"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(tags, forKey: .tags)
        try codingContainer.encode(accountEmail, forKey: .accountEmail)
        try codingContainer.encode(accessToken, forKey: .accessToken)
        try codingContainer.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try codingContainer.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try codingContainer.encodeIfPresent(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try codingContainer.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try codingContainer.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try codingContainer.encodeIfPresent(prependFilenameToChunks, forKey: .prependFilenameToChunks)
        try codingContainer.encodeIfPresent(syncFilesOnConnection, forKey: .syncFilesOnConnection)
        try codingContainer.encodeIfPresent(requestId, forKey: .requestId)
        try codingContainer.encodeIfPresent(syncSourceItems, forKey: .syncSourceItems)
        try codingContainer.encodeIfPresent(fileSyncConfig, forKey: .fileSyncConfig)
        try codingContainer.encodeIfPresent(dataSourceTags, forKey: .dataSourceTags)
    }
}
