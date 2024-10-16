//
// UserConfiguration.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserConfiguration: Codable, JSONEncodable, Hashable {

    public var autoSyncEnabledSources: AutoSyncEnabledSourcesProperty?
    /** Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit. */
    public var maxFiles: Int?
    /** Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit. */
    public var maxFilesPerUpload: Int?
    /** Custom character upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1,         then the user will have no limit. */
    public var maxCharacters: Int?
    /** A single file upload from the user can not exceed this character limit.         If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the          user will have no limit. */
    public var maxCharactersPerFile: Int?
    /** Custom character upload limit for the user across a single upload.         If set, then the user won't be able to sync more than this many characters in one upload.          If not set, or if set to -1, then the user will have no limit. */
    public var maxCharactersPerUpload: Int?

    public init(autoSyncEnabledSources: AutoSyncEnabledSourcesProperty? = nil, maxFiles: Int? = nil, maxFilesPerUpload: Int? = nil, maxCharacters: Int? = nil, maxCharactersPerFile: Int? = nil, maxCharactersPerUpload: Int? = nil) {
        self.autoSyncEnabledSources = autoSyncEnabledSources
        self.maxFiles = maxFiles
        self.maxFilesPerUpload = maxFilesPerUpload
        self.maxCharacters = maxCharacters
        self.maxCharactersPerFile = maxCharactersPerFile
        self.maxCharactersPerUpload = maxCharactersPerUpload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case autoSyncEnabledSources = "auto_sync_enabled_sources"
        case maxFiles = "max_files"
        case maxFilesPerUpload = "max_files_per_upload"
        case maxCharacters = "max_characters"
        case maxCharactersPerFile = "max_characters_per_file"
        case maxCharactersPerUpload = "max_characters_per_upload"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(autoSyncEnabledSources, forKey: .autoSyncEnabledSources)
        try codingContainer.encodeIfPresent(maxFiles, forKey: .maxFiles)
        try codingContainer.encodeIfPresent(maxFilesPerUpload, forKey: .maxFilesPerUpload)
        try codingContainer.encodeIfPresent(maxCharacters, forKey: .maxCharacters)
        try codingContainer.encodeIfPresent(maxCharactersPerFile, forKey: .maxCharactersPerFile)
        try codingContainer.encodeIfPresent(maxCharactersPerUpload, forKey: .maxCharactersPerUpload)
    }
}

