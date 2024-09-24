//
// RevokeAccessTokenInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RevokeAccessTokenInput: Codable, JSONEncodable, Hashable {

    public var dataSourceId: Int

    public init(dataSourceId: Int) {
        self.dataSourceId = dataSourceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataSourceId = "data_source_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(dataSourceId, forKey: .dataSourceId)
    }
}

