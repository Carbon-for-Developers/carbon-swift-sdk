//
// ZoteroAuthentication.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ZoteroAuthentication: Codable, JSONEncodable, Hashable {

    public var source: AnyCodable?
    public var accessToken: String
    public var accessTokenSecret: String
    public var username: String
    public var zoteroId: String

    public init(source: AnyCodable?, accessToken: String, accessTokenSecret: String, username: String, zoteroId: String) {
        self.source = source
        self.accessToken = accessToken
        self.accessTokenSecret = accessTokenSecret
        self.username = username
        self.zoteroId = zoteroId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case accessTokenSecret = "access_token_secret"
        case username
        case zoteroId = "zotero_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(accessToken, forKey: .accessToken)
        try codingContainer.encode(accessTokenSecret, forKey: .accessTokenSecret)
        try codingContainer.encode(username, forKey: .username)
        try codingContainer.encode(zoteroId, forKey: .zoteroId)
    }
}

