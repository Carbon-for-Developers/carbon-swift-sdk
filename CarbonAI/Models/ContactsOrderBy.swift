//
// ContactsOrderBy.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ContactsOrderBy: String, Codable, CaseIterable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case title = "title"
    case name = "name"
    case lastActivityAt = "last_activity_at"
}