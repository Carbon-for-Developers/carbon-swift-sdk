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
    public var status: WebhookStatus
    public var statusReason: String?
    public var createdAt: Date
    public var updatedAt: Date

    public init(id: Int, organizationId: Int, url: String, signingKey: String, status: WebhookStatus, statusReason: String? = nil, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.organizationId = organizationId
        self.url = url
        self.signingKey = signingKey
        self.status = status
        self.statusReason = statusReason
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case organizationId = "organization_id"
        case url
        case signingKey = "signing_key"
        case status
        case statusReason = "status_reason"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(organizationId, forKey: .organizationId)
        try codingContainer.encode(url, forKey: .url)
        try codingContainer.encode(signingKey, forKey: .signingKey)
        try codingContainer.encode(status, forKey: .status)
        try codingContainer.encodeIfPresent(statusReason, forKey: .statusReason)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
    }
}

