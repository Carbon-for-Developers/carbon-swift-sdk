//
// UserListResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserListResponse: Codable, JSONEncodable, Hashable {

    public var users: [ListUserResponse]
    public var count: Int?

    public init(users: [ListUserResponse], count: Int?) {
        self.users = users
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(users, forKey: .users)
        try codingContainer.encode(count, forKey: .count)
    }
}

