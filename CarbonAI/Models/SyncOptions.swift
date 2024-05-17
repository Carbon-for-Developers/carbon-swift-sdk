//
// SyncOptions.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncOptions: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    public var chunkSize: Int? = 1500
    public var chunkOverlap: Int? = 20
    public var skipEmbeddingGeneration: Bool? = false
    public var embeddingModel: EmbeddingGeneratorsNullable?
    public var generateSparseVectors: Bool? = false
    public var prependFilenameToChunks: Bool? = false
    /** Number of objects per chunk. For csv, tsv, xlsx, and json files only. */
    public var maxItemsPerChunk: Int?
    /** Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk */
    public var syncFilesOnConnection: Bool? = true
    public var setPageAsBoundary: Bool? = false
    public var requestId: String? = "b194468b-b547-46b9-98d6-e45c491bb8d0"
    public var enableFilePicker: Bool? = true
    /** Enabling this flag will fetch all available content from the source to be listed via list items endpoint */
    public var syncSourceItems: Bool? = true
    /** Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX. It will be ignored for other data sources. */
    public var incrementalSync: Bool? = false
    public var fileSyncConfig: HelpdeskFileSyncConfigNullable?

    public init(tags: AnyCodable? = nil, chunkSize: Int? = 1500, chunkOverlap: Int? = 20, skipEmbeddingGeneration: Bool? = false, embeddingModel: EmbeddingGeneratorsNullable? = nil, generateSparseVectors: Bool? = false, prependFilenameToChunks: Bool? = false, maxItemsPerChunk: Int? = nil, syncFilesOnConnection: Bool? = true, setPageAsBoundary: Bool? = false, requestId: String? = "b194468b-b547-46b9-98d6-e45c491bb8d0", enableFilePicker: Bool? = true, syncSourceItems: Bool? = true, incrementalSync: Bool? = false, fileSyncConfig: HelpdeskFileSyncConfigNullable? = nil) {
        self.tags = tags
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.embeddingModel = embeddingModel
        self.generateSparseVectors = generateSparseVectors
        self.prependFilenameToChunks = prependFilenameToChunks
        self.maxItemsPerChunk = maxItemsPerChunk
        self.syncFilesOnConnection = syncFilesOnConnection
        self.setPageAsBoundary = setPageAsBoundary
        self.requestId = requestId
        self.enableFilePicker = enableFilePicker
        self.syncSourceItems = syncSourceItems
        self.incrementalSync = incrementalSync
        self.fileSyncConfig = fileSyncConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case embeddingModel = "embedding_model"
        case generateSparseVectors = "generate_sparse_vectors"
        case prependFilenameToChunks = "prepend_filename_to_chunks"
        case maxItemsPerChunk = "max_items_per_chunk"
        case syncFilesOnConnection = "sync_files_on_connection"
        case setPageAsBoundary = "set_page_as_boundary"
        case requestId = "request_id"
        case enableFilePicker = "enable_file_picker"
        case syncSourceItems = "sync_source_items"
        case incrementalSync = "incremental_sync"
        case fileSyncConfig = "file_sync_config"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try container.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try container.encodeIfPresent(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try container.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try container.encodeIfPresent(prependFilenameToChunks, forKey: .prependFilenameToChunks)
        try container.encodeIfPresent(maxItemsPerChunk, forKey: .maxItemsPerChunk)
        try container.encodeIfPresent(syncFilesOnConnection, forKey: .syncFilesOnConnection)
        try container.encodeIfPresent(setPageAsBoundary, forKey: .setPageAsBoundary)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(enableFilePicker, forKey: .enableFilePicker)
        try container.encodeIfPresent(syncSourceItems, forKey: .syncSourceItems)
        try container.encodeIfPresent(incrementalSync, forKey: .incrementalSync)
        try container.encodeIfPresent(fileSyncConfig, forKey: .fileSyncConfig)
    }
}

