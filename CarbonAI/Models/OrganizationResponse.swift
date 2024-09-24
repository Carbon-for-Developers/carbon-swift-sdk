//
// OrganizationResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationResponse: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var name: String
    public var nickname: String?
    public var removeBranding: Bool
    public var customBranding: AnyCodable?
    public var customLimits: AnyCodable?
    public var aggregateFileSize: AnyCodable
    public var aggregateNumCharacters: AnyCodable
    public var aggregateNumTokens: AnyCodable
    public var aggregateNumEmbeddings: AnyCodable
    public var aggregateNumFilesBySource: AnyCodable
    public var aggregateNumFilesByFileFormat: AnyCodable
    public var fileStatisticsAggregatedAt: Date?
    public var periodEndsAt: Date?
    public var cancelAtPeriodEnd: Bool?
    public var connectorSettings: AnyCodable
    public var globalUserConfig: AnyCodable
    public var fileSyncUsage: AnyCodable
    public var loggingSettings: AnyCodable
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: Int, name: String, nickname: String?, removeBranding: Bool, customBranding: AnyCodable?, customLimits: AnyCodable?, aggregateFileSize: AnyCodable, aggregateNumCharacters: AnyCodable, aggregateNumTokens: AnyCodable, aggregateNumEmbeddings: AnyCodable, aggregateNumFilesBySource: AnyCodable, aggregateNumFilesByFileFormat: AnyCodable, fileStatisticsAggregatedAt: Date?, periodEndsAt: Date?, cancelAtPeriodEnd: Bool?, connectorSettings: AnyCodable, globalUserConfig: AnyCodable, fileSyncUsage: AnyCodable, loggingSettings: AnyCodable, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.name = name
        self.nickname = nickname
        self.removeBranding = removeBranding
        self.customBranding = customBranding
        self.customLimits = customLimits
        self.aggregateFileSize = aggregateFileSize
        self.aggregateNumCharacters = aggregateNumCharacters
        self.aggregateNumTokens = aggregateNumTokens
        self.aggregateNumEmbeddings = aggregateNumEmbeddings
        self.aggregateNumFilesBySource = aggregateNumFilesBySource
        self.aggregateNumFilesByFileFormat = aggregateNumFilesByFileFormat
        self.fileStatisticsAggregatedAt = fileStatisticsAggregatedAt
        self.periodEndsAt = periodEndsAt
        self.cancelAtPeriodEnd = cancelAtPeriodEnd
        self.connectorSettings = connectorSettings
        self.globalUserConfig = globalUserConfig
        self.fileSyncUsage = fileSyncUsage
        self.loggingSettings = loggingSettings
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case nickname
        case removeBranding = "remove_branding"
        case customBranding = "custom_branding"
        case customLimits = "custom_limits"
        case aggregateFileSize = "aggregate_file_size"
        case aggregateNumCharacters = "aggregate_num_characters"
        case aggregateNumTokens = "aggregate_num_tokens"
        case aggregateNumEmbeddings = "aggregate_num_embeddings"
        case aggregateNumFilesBySource = "aggregate_num_files_by_source"
        case aggregateNumFilesByFileFormat = "aggregate_num_files_by_file_format"
        case fileStatisticsAggregatedAt = "file_statistics_aggregated_at"
        case periodEndsAt = "period_ends_at"
        case cancelAtPeriodEnd = "cancel_at_period_end"
        case connectorSettings = "connector_settings"
        case globalUserConfig = "global_user_config"
        case fileSyncUsage = "file_sync_usage"
        case loggingSettings = "logging_settings"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(name, forKey: .name)
        try codingContainer.encode(nickname, forKey: .nickname)
        try codingContainer.encode(removeBranding, forKey: .removeBranding)
        try codingContainer.encode(customBranding, forKey: .customBranding)
        try codingContainer.encode(customLimits, forKey: .customLimits)
        try codingContainer.encode(aggregateFileSize, forKey: .aggregateFileSize)
        try codingContainer.encode(aggregateNumCharacters, forKey: .aggregateNumCharacters)
        try codingContainer.encode(aggregateNumTokens, forKey: .aggregateNumTokens)
        try codingContainer.encode(aggregateNumEmbeddings, forKey: .aggregateNumEmbeddings)
        try codingContainer.encode(aggregateNumFilesBySource, forKey: .aggregateNumFilesBySource)
        try codingContainer.encode(aggregateNumFilesByFileFormat, forKey: .aggregateNumFilesByFileFormat)
        try codingContainer.encode(fileStatisticsAggregatedAt, forKey: .fileStatisticsAggregatedAt)
        try codingContainer.encode(periodEndsAt, forKey: .periodEndsAt)
        try codingContainer.encode(cancelAtPeriodEnd, forKey: .cancelAtPeriodEnd)
        try codingContainer.encode(connectorSettings, forKey: .connectorSettings)
        try codingContainer.encode(globalUserConfig, forKey: .globalUserConfig)
        try codingContainer.encode(fileSyncUsage, forKey: .fileSyncUsage)
        try codingContainer.encode(loggingSettings, forKey: .loggingSettings)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
    }
}

