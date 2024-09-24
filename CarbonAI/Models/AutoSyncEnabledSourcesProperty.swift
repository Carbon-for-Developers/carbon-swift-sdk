//
// AutoSyncEnabledSourcesProperty.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** List of data source types to enable auto sync for. Empty array will remove all sources          and the string \&quot;ALL\&quot; will enable it for all data sources */
public struct AutoSyncEnabledSourcesProperty: Codable, JSONEncodable, Hashable {


    public enum CodingKeys: CodingKey, CaseIterable {
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
    }
}

