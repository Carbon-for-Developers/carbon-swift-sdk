//
// SyncFilesRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncFilesRequest: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    public var dataSourceId: Int
    public var ids: IdsProperty
    public var chunkSize: Int? = 1500
    public var chunkOverlap: Int? = 20
    public var skipEmbeddingGeneration: Bool? = false
    public var embeddingModel: EmbeddingGeneratorsNullable?
    public var generateSparseVectors: Bool? = false
    public var prependFilenameToChunks: Bool? = false
    /** Number of objects per chunk. For csv, tsv, xlsx, and json files only. */
    public var maxItemsPerChunk: Int?
    public var setPageAsBoundary: Bool? = false
    public var requestId: String? = "fdb7ec68-6f04-49d2-adb3-fc5ae9f30a14"
    public var useOcr: Bool? = false
    public var parsePdfTablesWithOcr: Bool? = false
    /** Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX. It will be ignored for other data sources. */
    public var incrementalSync: Bool? = false
    public var fileSyncConfig: HelpdeskGlobalFileSyncConfigNullable?

    public init(tags: AnyCodable? = nil, dataSourceId: Int, ids: IdsProperty, chunkSize: Int? = 1500, chunkOverlap: Int? = 20, skipEmbeddingGeneration: Bool? = false, embeddingModel: EmbeddingGeneratorsNullable? = nil, generateSparseVectors: Bool? = false, prependFilenameToChunks: Bool? = false, maxItemsPerChunk: Int? = nil, setPageAsBoundary: Bool? = false, requestId: String? = "fdb7ec68-6f04-49d2-adb3-fc5ae9f30a14", useOcr: Bool? = false, parsePdfTablesWithOcr: Bool? = false, incrementalSync: Bool? = false, fileSyncConfig: HelpdeskGlobalFileSyncConfigNullable? = nil) {
        self.tags = tags
        self.dataSourceId = dataSourceId
        self.ids = ids
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.embeddingModel = embeddingModel
        self.generateSparseVectors = generateSparseVectors
        self.prependFilenameToChunks = prependFilenameToChunks
        self.maxItemsPerChunk = maxItemsPerChunk
        self.setPageAsBoundary = setPageAsBoundary
        self.requestId = requestId
        self.useOcr = useOcr
        self.parsePdfTablesWithOcr = parsePdfTablesWithOcr
        self.incrementalSync = incrementalSync
        self.fileSyncConfig = fileSyncConfig
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case dataSourceId = "data_source_id"
        case ids
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case embeddingModel = "embedding_model"
        case generateSparseVectors = "generate_sparse_vectors"
        case prependFilenameToChunks = "prepend_filename_to_chunks"
        case maxItemsPerChunk = "max_items_per_chunk"
        case setPageAsBoundary = "set_page_as_boundary"
        case requestId = "request_id"
        case useOcr = "use_ocr"
        case parsePdfTablesWithOcr = "parse_pdf_tables_with_ocr"
        case incrementalSync = "incremental_sync"
        case fileSyncConfig = "file_sync_config"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encode(dataSourceId, forKey: .dataSourceId)
        try container.encode(ids, forKey: .ids)
        try container.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try container.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try container.encodeIfPresent(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try container.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try container.encodeIfPresent(prependFilenameToChunks, forKey: .prependFilenameToChunks)
        try container.encodeIfPresent(maxItemsPerChunk, forKey: .maxItemsPerChunk)
        try container.encodeIfPresent(setPageAsBoundary, forKey: .setPageAsBoundary)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(useOcr, forKey: .useOcr)
        try container.encodeIfPresent(parsePdfTablesWithOcr, forKey: .parsePdfTablesWithOcr)
        try container.encodeIfPresent(incrementalSync, forKey: .incrementalSync)
        try container.encodeIfPresent(fileSyncConfig, forKey: .fileSyncConfig)
    }
}

