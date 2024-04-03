//
// Webhook.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Webhook: Codable, JSONEncodable, Hashable {

    public var id: Int
    public var organizationId: Int
    public var url: String
    public var signingKey: String
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: Int, organizationId: Int, url: String, signingKey: String, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.organizationId = organizationId
        self.url = url
        self.signingKey = signingKey
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case organizationId = "organization_id"
        case url
        case signingKey = "signing_key"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(organizationId, forKey: .organizationId)
        try container.encode(url, forKey: .url)
        try container.encode(signingKey, forKey: .signingKey)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
    }
}

