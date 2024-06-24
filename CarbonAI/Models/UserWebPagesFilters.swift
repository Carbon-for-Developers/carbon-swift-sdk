//
// UserWebPagesFilters.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserWebPagesFilters: Codable, JSONEncodable, Hashable {

    public var ids: [Int]?

    public init(ids: [Int]? = nil) {
        self.ids = ids
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ids
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(ids, forKey: .ids)
    }
}

