//
// UserFile.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserFile: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    public var id: Int
    public var source: DataSourceType
    public var organizationId: Int
    public var organizationSuppliedUserId: String
    public var organizationUserDataSourceId: Int?
    public var externalFileId: String
    public var externalUrl: String?
    public var syncStatus: ExternalFileSyncStatuses
    public var syncErrorMessage: String?
    public var lastSync: Date?
    public var fileStatistics: FileStatisticsNullable?
    public var fileMetadata: AnyCodable?
    public var embeddingProperties: [String: EmbeddingProperties]?
    public var chunkSize: Int?
    public var chunkOverlap: Int?
    public var chunkProperties: ChunkPropertiesNullable?
    public var ocrProperties: AnyCodable
    public var ocrJobStartedAt: Date?
    public var name: String?
    public var parentId: Int?
    public var enableAutoSync: Bool?
    public var presignedUrl: String?
    public var parsedTextUrl: String?
    public var additionalPresignedUrls: AnyCodable?
    public var skipEmbeddingGeneration: Bool
    public var sourceCreatedAt: Date?
    public var generateSparseVectors: Bool?
    public var audioProperties: AnyCodable?
    public var requestId: String?
    public var createdAt: Date
    public var updatedAt: Date

    public init(tags: AnyCodable?, id: Int, source: DataSourceType, organizationId: Int, organizationSuppliedUserId: String, organizationUserDataSourceId: Int?, externalFileId: String, externalUrl: String?, syncStatus: ExternalFileSyncStatuses, syncErrorMessage: String?, lastSync: Date?, fileStatistics: FileStatisticsNullable?, fileMetadata: AnyCodable?, embeddingProperties: [String: EmbeddingProperties]?, chunkSize: Int?, chunkOverlap: Int?, chunkProperties: ChunkPropertiesNullable?, ocrProperties: AnyCodable, ocrJobStartedAt: Date?, name: String?, parentId: Int?, enableAutoSync: Bool?, presignedUrl: String?, parsedTextUrl: String?, additionalPresignedUrls: AnyCodable?, skipEmbeddingGeneration: Bool, sourceCreatedAt: Date?, generateSparseVectors: Bool?, audioProperties: AnyCodable?, requestId: String?, createdAt: Date, updatedAt: Date) {
        self.tags = tags
        self.id = id
        self.source = source
        self.organizationId = organizationId
        self.organizationSuppliedUserId = organizationSuppliedUserId
        self.organizationUserDataSourceId = organizationUserDataSourceId
        self.externalFileId = externalFileId
        self.externalUrl = externalUrl
        self.syncStatus = syncStatus
        self.syncErrorMessage = syncErrorMessage
        self.lastSync = lastSync
        self.fileStatistics = fileStatistics
        self.fileMetadata = fileMetadata
        self.embeddingProperties = embeddingProperties
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.chunkProperties = chunkProperties
        self.ocrProperties = ocrProperties
        self.ocrJobStartedAt = ocrJobStartedAt
        self.name = name
        self.parentId = parentId
        self.enableAutoSync = enableAutoSync
        self.presignedUrl = presignedUrl
        self.parsedTextUrl = parsedTextUrl
        self.additionalPresignedUrls = additionalPresignedUrls
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.sourceCreatedAt = sourceCreatedAt
        self.generateSparseVectors = generateSparseVectors
        self.audioProperties = audioProperties
        self.requestId = requestId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case id
        case source
        case organizationId = "organization_id"
        case organizationSuppliedUserId = "organization_supplied_user_id"
        case organizationUserDataSourceId = "organization_user_data_source_id"
        case externalFileId = "external_file_id"
        case externalUrl = "external_url"
        case syncStatus = "sync_status"
        case syncErrorMessage = "sync_error_message"
        case lastSync = "last_sync"
        case fileStatistics = "file_statistics"
        case fileMetadata = "file_metadata"
        case embeddingProperties = "embedding_properties"
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case chunkProperties = "chunk_properties"
        case ocrProperties = "ocr_properties"
        case ocrJobStartedAt = "ocr_job_started_at"
        case name
        case parentId = "parent_id"
        case enableAutoSync = "enable_auto_sync"
        case presignedUrl = "presigned_url"
        case parsedTextUrl = "parsed_text_url"
        case additionalPresignedUrls = "additional_presigned_urls"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case sourceCreatedAt = "source_created_at"
        case generateSparseVectors = "generate_sparse_vectors"
        case audioProperties = "audio_properties"
        case requestId = "request_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tags, forKey: .tags)
        try container.encode(id, forKey: .id)
        try container.encode(source, forKey: .source)
        try container.encode(organizationId, forKey: .organizationId)
        try container.encode(organizationSuppliedUserId, forKey: .organizationSuppliedUserId)
        try container.encode(organizationUserDataSourceId, forKey: .organizationUserDataSourceId)
        try container.encode(externalFileId, forKey: .externalFileId)
        try container.encode(externalUrl, forKey: .externalUrl)
        try container.encode(syncStatus, forKey: .syncStatus)
        try container.encode(syncErrorMessage, forKey: .syncErrorMessage)
        try container.encode(lastSync, forKey: .lastSync)
        try container.encode(fileStatistics, forKey: .fileStatistics)
        try container.encode(fileMetadata, forKey: .fileMetadata)
        try container.encode(embeddingProperties, forKey: .embeddingProperties)
        try container.encode(chunkSize, forKey: .chunkSize)
        try container.encode(chunkOverlap, forKey: .chunkOverlap)
        try container.encode(chunkProperties, forKey: .chunkProperties)
        try container.encode(ocrProperties, forKey: .ocrProperties)
        try container.encode(ocrJobStartedAt, forKey: .ocrJobStartedAt)
        try container.encode(name, forKey: .name)
        try container.encode(parentId, forKey: .parentId)
        try container.encode(enableAutoSync, forKey: .enableAutoSync)
        try container.encode(presignedUrl, forKey: .presignedUrl)
        try container.encode(parsedTextUrl, forKey: .parsedTextUrl)
        try container.encode(additionalPresignedUrls, forKey: .additionalPresignedUrls)
        try container.encode(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try container.encode(sourceCreatedAt, forKey: .sourceCreatedAt)
        try container.encode(generateSparseVectors, forKey: .generateSparseVectors)
        try container.encode(audioProperties, forKey: .audioProperties)
        try container.encode(requestId, forKey: .requestId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}

