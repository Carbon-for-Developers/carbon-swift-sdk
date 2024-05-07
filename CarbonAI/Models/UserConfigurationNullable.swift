//
// UserConfigurationNullable.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Used to set organization level defaults for user settings. These settings will apply to all users under         the organization that don&#39;t have them defined. */
public struct UserConfigurationNullable: Codable, JSONEncodable, Hashable {

    public var autoSyncEnabledSources: AutoSyncEnabledSourcesProperty?
    /** Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit. */
    public var maxFiles: Int?
    /** Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit. */
    public var maxFilesPerUpload: Int?

    public init(autoSyncEnabledSources: AutoSyncEnabledSourcesProperty? = nil, maxFiles: Int? = nil, maxFilesPerUpload: Int? = nil) {
        self.autoSyncEnabledSources = autoSyncEnabledSources
        self.maxFiles = maxFiles
        self.maxFilesPerUpload = maxFilesPerUpload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case autoSyncEnabledSources = "auto_sync_enabled_sources"
        case maxFiles = "max_files"
        case maxFilesPerUpload = "max_files_per_upload"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(autoSyncEnabledSources, forKey: .autoSyncEnabledSources)
        try container.encodeIfPresent(maxFiles, forKey: .maxFiles)
        try container.encodeIfPresent(maxFilesPerUpload, forKey: .maxFilesPerUpload)
    }
}

