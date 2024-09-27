//
// OpportunitiesResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OpportunitiesResponse: Codable, JSONEncodable, Hashable {

    public var count: Int
    public var nextCursor: String?
    public var data: [Opportunity]

    public init(count: Int, nextCursor: String?, data: [Opportunity]) {
        self.count = count
        self.nextCursor = nextCursor
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case nextCursor = "next_cursor"
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(count, forKey: .count)
        try codingContainer.encode(nextCursor, forKey: .nextCursor)
        try codingContainer.encode(data, forKey: .data)
    }
}
