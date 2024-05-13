//
// HelpdeskFileSyncConfig.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HelpdeskFileSyncConfig: Codable, JSONEncodable, Hashable {

    public var fileTypes: [HelpdeskFileTypes]?
    public var syncAttachments: Bool? = false

    public init(fileTypes: [HelpdeskFileTypes]? = nil, syncAttachments: Bool? = false) {
        self.fileTypes = fileTypes
        self.syncAttachments = syncAttachments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileTypes = "file_types"
        case syncAttachments = "sync_attachments"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileTypes, forKey: .fileTypes)
        try container.encodeIfPresent(syncAttachments, forKey: .syncAttachments)
    }
}
