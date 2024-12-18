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
    public var organizationUserId: Int?
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
    public var ocrProperties: AnyCodable?
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
    public var requestId: String?
    public var uploadId: String?
    public var syncProperties: AnyCodable?
    public var messagesMetadata: AnyCodable?
    public var fileContentsDeleted: Bool? = false
    public var supportsColdStorage: Bool
    public var hotStorageTimeToLive: Int?
    public var embeddingStorageStatus: EmbeddingStorageStatus
    public var createdAt: Date
    public var updatedAt: Date

    public init(tags: AnyCodable? = nil, id: Int, source: DataSourceType, organizationId: Int, organizationUserId: Int?, organizationSuppliedUserId: String, organizationUserDataSourceId: Int? = nil, externalFileId: String, externalUrl: String? = nil, syncStatus: ExternalFileSyncStatuses, syncErrorMessage: String? = nil, lastSync: Date? = nil, fileStatistics: FileStatisticsNullable? = nil, fileMetadata: AnyCodable? = nil, embeddingProperties: [String: EmbeddingProperties]? = nil, chunkSize: Int? = nil, chunkOverlap: Int? = nil, chunkProperties: ChunkPropertiesNullable? = nil, ocrProperties: AnyCodable? = nil, ocrJobStartedAt: Date? = nil, name: String? = nil, parentId: Int? = nil, enableAutoSync: Bool? = nil, presignedUrl: String? = nil, parsedTextUrl: String? = nil, additionalPresignedUrls: AnyCodable? = nil, skipEmbeddingGeneration: Bool, sourceCreatedAt: Date? = nil, generateSparseVectors: Bool? = nil, requestId: String? = nil, uploadId: String? = nil, syncProperties: AnyCodable? = nil, messagesMetadata: AnyCodable? = nil, fileContentsDeleted: Bool? = false, supportsColdStorage: Bool, hotStorageTimeToLive: Int? = nil, embeddingStorageStatus: EmbeddingStorageStatus, createdAt: Date, updatedAt: Date) {
        self.tags = tags
        self.id = id
        self.source = source
        self.organizationId = organizationId
        self.organizationUserId = organizationUserId
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
        self.requestId = requestId
        self.uploadId = uploadId
        self.syncProperties = syncProperties
        self.messagesMetadata = messagesMetadata
        self.fileContentsDeleted = fileContentsDeleted
        self.supportsColdStorage = supportsColdStorage
        self.hotStorageTimeToLive = hotStorageTimeToLive
        self.embeddingStorageStatus = embeddingStorageStatus
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case id
        case source
        case organizationId = "organization_id"
        case organizationUserId = "organization_user_id"
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
        case requestId = "request_id"
        case uploadId = "upload_id"
        case syncProperties = "sync_properties"
        case messagesMetadata = "messages_metadata"
        case fileContentsDeleted = "file_contents_deleted"
        case supportsColdStorage = "supports_cold_storage"
        case hotStorageTimeToLive = "hot_storage_time_to_live"
        case embeddingStorageStatus = "embedding_storage_status"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(tags, forKey: .tags)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(organizationId, forKey: .organizationId)
        try codingContainer.encode(organizationUserId, forKey: .organizationUserId)
        try codingContainer.encode(organizationSuppliedUserId, forKey: .organizationSuppliedUserId)
        try codingContainer.encodeIfPresent(organizationUserDataSourceId, forKey: .organizationUserDataSourceId)
        try codingContainer.encode(externalFileId, forKey: .externalFileId)
        try codingContainer.encodeIfPresent(externalUrl, forKey: .externalUrl)
        try codingContainer.encode(syncStatus, forKey: .syncStatus)
        try codingContainer.encodeIfPresent(syncErrorMessage, forKey: .syncErrorMessage)
        try codingContainer.encodeIfPresent(lastSync, forKey: .lastSync)
        try codingContainer.encodeIfPresent(fileStatistics, forKey: .fileStatistics)
        try codingContainer.encodeIfPresent(fileMetadata, forKey: .fileMetadata)
        try codingContainer.encodeIfPresent(embeddingProperties, forKey: .embeddingProperties)
        try codingContainer.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try codingContainer.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try codingContainer.encodeIfPresent(chunkProperties, forKey: .chunkProperties)
        try codingContainer.encodeIfPresent(ocrProperties, forKey: .ocrProperties)
        try codingContainer.encodeIfPresent(ocrJobStartedAt, forKey: .ocrJobStartedAt)
        try codingContainer.encodeIfPresent(name, forKey: .name)
        try codingContainer.encodeIfPresent(parentId, forKey: .parentId)
        try codingContainer.encodeIfPresent(enableAutoSync, forKey: .enableAutoSync)
        try codingContainer.encodeIfPresent(presignedUrl, forKey: .presignedUrl)
        try codingContainer.encodeIfPresent(parsedTextUrl, forKey: .parsedTextUrl)
        try codingContainer.encodeIfPresent(additionalPresignedUrls, forKey: .additionalPresignedUrls)
        try codingContainer.encode(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try codingContainer.encodeIfPresent(sourceCreatedAt, forKey: .sourceCreatedAt)
        try codingContainer.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try codingContainer.encodeIfPresent(requestId, forKey: .requestId)
        try codingContainer.encodeIfPresent(uploadId, forKey: .uploadId)
        try codingContainer.encodeIfPresent(syncProperties, forKey: .syncProperties)
        try codingContainer.encodeIfPresent(messagesMetadata, forKey: .messagesMetadata)
        try codingContainer.encodeIfPresent(fileContentsDeleted, forKey: .fileContentsDeleted)
        try codingContainer.encode(supportsColdStorage, forKey: .supportsColdStorage)
        try codingContainer.encodeIfPresent(hotStorageTimeToLive, forKey: .hotStorageTimeToLive)
        try codingContainer.encode(embeddingStorageStatus, forKey: .embeddingStorageStatus)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
    }
}

