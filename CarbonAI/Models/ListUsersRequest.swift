//
// ListUsersRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListUsersRequest: Codable, JSONEncodable, Hashable {

    public var pagination: Pagination?
    public var filters: ListUsersFilters?
    public var orderBy: ListUsersOrderByTypes?
    public var orderDir: OrderDirV2?
    public var includeCount: Bool? = false

    public init(pagination: Pagination? = nil, filters: ListUsersFilters? = nil, orderBy: ListUsersOrderByTypes? = nil, orderDir: OrderDirV2? = nil, includeCount: Bool? = false) {
        self.pagination = pagination
        self.filters = filters
        self.orderBy = orderBy
        self.orderDir = orderDir
        self.includeCount = includeCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case filters
        case orderBy = "order_by"
        case orderDir = "order_dir"
        case includeCount = "include_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pagination, forKey: .pagination)
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
        try container.encodeIfPresent(orderDir, forKey: .orderDir)
        try container.encodeIfPresent(includeCount, forKey: .includeCount)
    }
}

