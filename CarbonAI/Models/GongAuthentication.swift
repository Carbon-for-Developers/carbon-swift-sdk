//
// GongAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GongAuthentication: Codable, JSONEncodable, Hashable {

    public enum Source: String, Codable, CaseIterable {
        case gong = "GONG"
    }
    public var source: Source
    public var accessToken: String
    public var refreshToken: String?
    public var gongAccountEmail: String

    public init(source: Source, accessToken: String, refreshToken: String? = nil, gongAccountEmail: String) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.gongAccountEmail = gongAccountEmail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case gongAccountEmail = "gong_account_email"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(accessToken, forKey: .accessToken)
        try codingContainer.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try codingContainer.encode(gongAccountEmail, forKey: .gongAccountEmail)
    }
}

