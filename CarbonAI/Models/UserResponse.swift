//
// UserResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserResponse: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var organizationId: Int
    public var organizationSuppliedUserId: String
    public var createdAt: Date
    public var updatedAt: Date
    public var deletedAt: Date?
    public var numFilesSynced: Int
    public var numCharactersSynced: Int
    public var numTokensSynced: Int
    public var aggregateFileSize: AnyCodable
    public var aggregateNumCharacters: AnyCodable
    public var aggregateNumTokens: AnyCodable
    public var aggregateNumEmbeddings: AnyCodable
    public var aggregateNumFilesBySource: AnyCodable
    public var aggregateNumFilesByFileFormat: AnyCodable
    public var uniqueFileTags: [AnyCodable]
    public var enabledFeatures: AnyCodable?
    public var customLimits: AnyCodable?
    public var autoSyncEnabledSources: [AnyCodable]?
    public var connectorSettings: AnyCodable?

    public init(id: Int, organizationId: Int, organizationSuppliedUserId: String, createdAt: Date, updatedAt: Date, deletedAt: Date?, numFilesSynced: Int, numCharactersSynced: Int, numTokensSynced: Int, aggregateFileSize: AnyCodable, aggregateNumCharacters: AnyCodable, aggregateNumTokens: AnyCodable, aggregateNumEmbeddings: AnyCodable, aggregateNumFilesBySource: AnyCodable, aggregateNumFilesByFileFormat: AnyCodable, uniqueFileTags: [AnyCodable], enabledFeatures: AnyCodable?, customLimits: AnyCodable? = nil, autoSyncEnabledSources: [AnyCodable]? = nil, connectorSettings: AnyCodable? = nil) {
        self.id = id
        self.organizationId = organizationId
        self.organizationSuppliedUserId = organizationSuppliedUserId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deletedAt = deletedAt
        self.numFilesSynced = numFilesSynced
        self.numCharactersSynced = numCharactersSynced
        self.numTokensSynced = numTokensSynced
        self.aggregateFileSize = aggregateFileSize
        self.aggregateNumCharacters = aggregateNumCharacters
        self.aggregateNumTokens = aggregateNumTokens
        self.aggregateNumEmbeddings = aggregateNumEmbeddings
        self.aggregateNumFilesBySource = aggregateNumFilesBySource
        self.aggregateNumFilesByFileFormat = aggregateNumFilesByFileFormat
        self.uniqueFileTags = uniqueFileTags
        self.enabledFeatures = enabledFeatures
        self.customLimits = customLimits
        self.autoSyncEnabledSources = autoSyncEnabledSources
        self.connectorSettings = connectorSettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case organizationId = "organization_id"
        case organizationSuppliedUserId = "organization_supplied_user_id"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case deletedAt = "deleted_at"
        case numFilesSynced = "num_files_synced"
        case numCharactersSynced = "num_characters_synced"
        case numTokensSynced = "num_tokens_synced"
        case aggregateFileSize = "aggregate_file_size"
        case aggregateNumCharacters = "aggregate_num_characters"
        case aggregateNumTokens = "aggregate_num_tokens"
        case aggregateNumEmbeddings = "aggregate_num_embeddings"
        case aggregateNumFilesBySource = "aggregate_num_files_by_source"
        case aggregateNumFilesByFileFormat = "aggregate_num_files_by_file_format"
        case uniqueFileTags = "unique_file_tags"
        case enabledFeatures = "enabled_features"
        case customLimits = "custom_limits"
        case autoSyncEnabledSources = "auto_sync_enabled_sources"
        case connectorSettings = "connector_settings"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(organizationId, forKey: .organizationId)
        try codingContainer.encode(organizationSuppliedUserId, forKey: .organizationSuppliedUserId)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
        try codingContainer.encode(deletedAt, forKey: .deletedAt)
        try codingContainer.encode(numFilesSynced, forKey: .numFilesSynced)
        try codingContainer.encode(numCharactersSynced, forKey: .numCharactersSynced)
        try codingContainer.encode(numTokensSynced, forKey: .numTokensSynced)
        try codingContainer.encode(aggregateFileSize, forKey: .aggregateFileSize)
        try codingContainer.encode(aggregateNumCharacters, forKey: .aggregateNumCharacters)
        try codingContainer.encode(aggregateNumTokens, forKey: .aggregateNumTokens)
        try codingContainer.encode(aggregateNumEmbeddings, forKey: .aggregateNumEmbeddings)
        try codingContainer.encode(aggregateNumFilesBySource, forKey: .aggregateNumFilesBySource)
        try codingContainer.encode(aggregateNumFilesByFileFormat, forKey: .aggregateNumFilesByFileFormat)
        try codingContainer.encode(uniqueFileTags, forKey: .uniqueFileTags)
        try codingContainer.encode(enabledFeatures, forKey: .enabledFeatures)
        try codingContainer.encodeIfPresent(customLimits, forKey: .customLimits)
        try codingContainer.encodeIfPresent(autoSyncEnabledSources, forKey: .autoSyncEnabledSources)
        try codingContainer.encodeIfPresent(connectorSettings, forKey: .connectorSettings)
    }
}

