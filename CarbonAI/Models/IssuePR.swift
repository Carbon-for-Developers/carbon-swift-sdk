//
// IssuePR.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IssuePR: Codable, JSONEncodable, Hashable {

    public var url: String
    public var mergedAt: String?

    public init(url: String, mergedAt: String?) {
        self.url = url
        self.mergedAt = mergedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case mergedAt = "merged_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(url, forKey: .url)
        try codingContainer.encode(mergedAt, forKey: .mergedAt)
    }
}

