//
// SyncFilesIds.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SyncFilesIds: Codable, JSONEncodable, Hashable {

    public var id: String
    public var rootId: String

    public init(id: String, rootId: String) {
        self.id = id
        self.rootId = rootId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case rootId = "root_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(rootId, forKey: .rootId)
    }
}

