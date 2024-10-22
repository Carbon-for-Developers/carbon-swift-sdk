//
// ColdStorageProps.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ColdStorageProps: Codable, JSONEncodable, Hashable {

    /** Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false. */
    public var enableColdStorage: Bool? = false
    /** Time in days after which the file will be moved to cold storage. Valid values are [1, 3, 7, 14, 30] */
    public var hotStorageTimeToLive: Int?

    public init(enableColdStorage: Bool? = false, hotStorageTimeToLive: Int? = nil) {
        self.enableColdStorage = enableColdStorage
        self.hotStorageTimeToLive = hotStorageTimeToLive
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enableColdStorage = "enable_cold_storage"
        case hotStorageTimeToLive = "hot_storage_time_to_live"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(enableColdStorage, forKey: .enableColdStorage)
        try codingContainer.encodeIfPresent(hotStorageTimeToLive, forKey: .hotStorageTimeToLive)
    }
}

