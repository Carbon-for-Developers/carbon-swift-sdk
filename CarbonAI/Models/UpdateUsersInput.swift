//
// UpdateUsersInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateUsersInput: Codable, JSONEncodable, Hashable {

    /** List of organization supplied user IDs */
    public var customerIds: [String]
    public var autoSyncEnabledSources: AutoSyncEnabledSourcesProperty?
    /** Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit. */
    public var maxFiles: Int?
    /** Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit. */
    public var maxFilesPerUpload: Int?

    public init(customerIds: [String], autoSyncEnabledSources: AutoSyncEnabledSourcesProperty? = nil, maxFiles: Int? = nil, maxFilesPerUpload: Int? = nil) {
        self.customerIds = customerIds
        self.autoSyncEnabledSources = autoSyncEnabledSources
        self.maxFiles = maxFiles
        self.maxFilesPerUpload = maxFilesPerUpload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customerIds = "customer_ids"
        case autoSyncEnabledSources = "auto_sync_enabled_sources"
        case maxFiles = "max_files"
        case maxFilesPerUpload = "max_files_per_upload"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(customerIds, forKey: .customerIds)
        try container.encodeIfPresent(autoSyncEnabledSources, forKey: .autoSyncEnabledSources)
        try container.encodeIfPresent(maxFiles, forKey: .maxFiles)
        try container.encodeIfPresent(maxFilesPerUpload, forKey: .maxFilesPerUpload)
    }
}

