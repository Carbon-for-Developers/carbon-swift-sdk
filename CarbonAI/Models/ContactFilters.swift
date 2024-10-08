//
// ContactFilters.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContactFilters: Codable, JSONEncodable, Hashable {

    public var ownerId: String?
    public var name: String?
    public var accountId: String?

    public init(ownerId: String? = nil, name: String? = nil, accountId: String? = nil) {
        self.ownerId = ownerId
        self.name = name
        self.accountId = accountId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case ownerId = "owner_id"
        case name
        case accountId = "account_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(ownerId, forKey: .ownerId)
        try codingContainer.encodeIfPresent(name, forKey: .name)
        try codingContainer.encodeIfPresent(accountId, forKey: .accountId)
    }
}

