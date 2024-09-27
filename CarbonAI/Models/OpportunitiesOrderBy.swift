//
// OpportunitiesOrderBy.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum OpportunitiesOrderBy: String, Codable, CaseIterable {
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case amount = "amount"
    case name = "name"
    case lastActivityAt = "last_activity_at"
    case closeDate = "close_date"
}
