//
// GoogleDriveWhiteLabelInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GoogleDriveWhiteLabelInput: Codable, JSONEncodable, Hashable {

    public var dataSourceType: AnyCodable?
    public var credentials: GoogleDriveCredentials

    public init(dataSourceType: AnyCodable?, credentials: GoogleDriveCredentials) {
        self.dataSourceType = dataSourceType
        self.credentials = credentials
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataSourceType = "data_source_type"
        case credentials
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(dataSourceType, forKey: .dataSourceType)
        try codingContainer.encode(credentials, forKey: .credentials)
    }
}
