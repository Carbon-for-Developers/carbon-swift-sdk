//
// OneDriveAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OneDriveAuthentication: Codable, JSONEncodable, Hashable {

    public var source: AnyCodable?
    public var accessToken: String
    public var refreshToken: String?
    public var tenantName: String?

    public init(source: AnyCodable?, accessToken: String, refreshToken: String? = nil, tenantName: String? = nil) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.tenantName = tenantName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case tenantName = "tenant_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(tenantName, forKey: .tenantName)
    }
}

