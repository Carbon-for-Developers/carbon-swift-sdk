//
// SalesforceAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SalesforceAuthentication: Codable, JSONEncodable, Hashable {

    public var source: AnyCodable?
    public var accessToken: String
    public var refreshToken: String?
    public var domain: String

    public init(source: AnyCodable?, accessToken: String, refreshToken: String? = nil, domain: String) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.domain = domain
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case domain
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encode(domain, forKey: .domain)
    }
}

