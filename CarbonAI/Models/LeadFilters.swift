//
// LeadFilters.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct LeadFilters: Codable, JSONEncodable, Hashable {

    public var ownerId: String?
    public var name: String?
    public var convertedAccountId: String?
    public var convertedContactId: String?

    public init(ownerId: String? = nil, name: String? = nil, convertedAccountId: String? = nil, convertedContactId: String? = nil) {
        self.ownerId = ownerId
        self.name = name
        self.convertedAccountId = convertedAccountId
        self.convertedContactId = convertedContactId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ownerId = "owner_id"
        case name
        case convertedAccountId = "converted_account_id"
        case convertedContactId = "converted_contact_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(ownerId, forKey: .ownerId)
        try codingContainer.encodeIfPresent(name, forKey: .name)
        try codingContainer.encodeIfPresent(convertedAccountId, forKey: .convertedAccountId)
        try codingContainer.encodeIfPresent(convertedContactId, forKey: .convertedContactId)
    }
}

