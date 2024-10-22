//
// OrganizationUserDataSourceAPI.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationUserDataSourceAPI: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable
    public var id: Int
    public var dataSourceExternalId: String?
    public var dataSourceType: DataSourceType
    public var token: AnyCodable?
    public var syncStatus: DataSourceSyncStatuses
    public var sourceItemsSyncedAt: Date?
    public var organizationUserId: Int
    public var organizationId: Int
    public var organizationSuppliedUserId: String
    public var revokedAccess: Bool
    public var lastSyncedAt: Date
    public var lastSyncAction: DataSourceLastSyncActions
    public var enableAutoSync: Bool?
    public var createdAt: Date
    public var updatedAt: Date
    public var filesSyncedAt: Date?
    public var dataSourceMetadata: AnyCodable

    public init(tags: AnyCodable, id: Int, dataSourceExternalId: String?, dataSourceType: DataSourceType, token: AnyCodable?, syncStatus: DataSourceSyncStatuses, sourceItemsSyncedAt: Date?, organizationUserId: Int, organizationId: Int, organizationSuppliedUserId: String, revokedAccess: Bool, lastSyncedAt: Date, lastSyncAction: DataSourceLastSyncActions, enableAutoSync: Bool?, createdAt: Date, updatedAt: Date, filesSyncedAt: Date?, dataSourceMetadata: AnyCodable) {
        self.tags = tags
        self.id = id
        self.dataSourceExternalId = dataSourceExternalId
        self.dataSourceType = dataSourceType
        self.token = token
        self.syncStatus = syncStatus
        self.sourceItemsSyncedAt = sourceItemsSyncedAt
        self.organizationUserId = organizationUserId
        self.organizationId = organizationId
        self.organizationSuppliedUserId = organizationSuppliedUserId
        self.revokedAccess = revokedAccess
        self.lastSyncedAt = lastSyncedAt
        self.lastSyncAction = lastSyncAction
        self.enableAutoSync = enableAutoSync
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.filesSyncedAt = filesSyncedAt
        self.dataSourceMetadata = dataSourceMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case id
        case dataSourceExternalId = "data_source_external_id"
        case dataSourceType = "data_source_type"
        case token
        case syncStatus = "sync_status"
        case sourceItemsSyncedAt = "source_items_synced_at"
        case organizationUserId = "organization_user_id"
        case organizationId = "organization_id"
        case organizationSuppliedUserId = "organization_supplied_user_id"
        case revokedAccess = "revoked_access"
        case lastSyncedAt = "last_synced_at"
        case lastSyncAction = "last_sync_action"
        case enableAutoSync = "enable_auto_sync"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case filesSyncedAt = "files_synced_at"
        case dataSourceMetadata = "data_source_metadata"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(tags, forKey: .tags)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(dataSourceExternalId, forKey: .dataSourceExternalId)
        try codingContainer.encode(dataSourceType, forKey: .dataSourceType)
        try codingContainer.encode(token, forKey: .token)
        try codingContainer.encode(syncStatus, forKey: .syncStatus)
        try codingContainer.encode(sourceItemsSyncedAt, forKey: .sourceItemsSyncedAt)
        try codingContainer.encode(organizationUserId, forKey: .organizationUserId)
        try codingContainer.encode(organizationId, forKey: .organizationId)
        try codingContainer.encode(organizationSuppliedUserId, forKey: .organizationSuppliedUserId)
        try codingContainer.encode(revokedAccess, forKey: .revokedAccess)
        try codingContainer.encode(lastSyncedAt, forKey: .lastSyncedAt)
        try codingContainer.encode(lastSyncAction, forKey: .lastSyncAction)
        try codingContainer.encode(enableAutoSync, forKey: .enableAutoSync)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
        try codingContainer.encode(filesSyncedAt, forKey: .filesSyncedAt)
        try codingContainer.encode(dataSourceMetadata, forKey: .dataSourceMetadata)
    }
}

