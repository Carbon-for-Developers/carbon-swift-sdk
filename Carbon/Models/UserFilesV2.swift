//
// UserFilesV2.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserFilesV2: Codable, JSONEncodable, Hashable {

    public var results: [UserFile]
    public var count: Int

    public init(results: [UserFile], count: Int) {
        self.results = results
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case results
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(results, forKey: .results)
        try container.encode(count, forKey: .count)
    }
}

