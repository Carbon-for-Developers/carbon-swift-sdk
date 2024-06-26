//
// OAuthAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OAuthAuthentication: Codable, JSONEncodable, Hashable {

    public var source: SimpleOAuthDataSources
    public var accessToken: String
    public var refreshToken: String?

    public init(source: SimpleOAuthDataSources, accessToken: String, refreshToken: String? = nil) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
    }
}

