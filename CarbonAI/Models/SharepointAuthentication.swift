//
// SharepointAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SharepointAuthentication: Codable, JSONEncodable, Hashable {

    public enum Source: String, Codable, CaseIterable {
        case sharepoint = "SHAREPOINT"
    }
    public var source: Source
    public var accessToken: String
    public var refreshToken: String?
    public var tenantName: String?
    public var siteName: String?

    public init(source: Source, accessToken: String, refreshToken: String? = nil, tenantName: String? = nil, siteName: String? = nil) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.tenantName = tenantName
        self.siteName = siteName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case tenantName = "tenant_name"
        case siteName = "site_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(accessToken, forKey: .accessToken)
        try codingContainer.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try codingContainer.encodeIfPresent(tenantName, forKey: .tenantName)
        try codingContainer.encodeIfPresent(siteName, forKey: .siteName)
    }
}

