//
// ListWhiteLabelRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListWhiteLabelRequest: Codable, JSONEncodable, Hashable {

    public var pagination: Pagination?
    public var orderBy: WhiteLabelOrderByColumns?
    public var orderDir: OrderDir?
    public var filters: WhiteLabelFilters?

    public init(pagination: Pagination? = nil, orderBy: WhiteLabelOrderByColumns? = nil, orderDir: OrderDir? = nil, filters: WhiteLabelFilters? = nil) {
        self.pagination = pagination
        self.orderBy = orderBy
        self.orderDir = orderDir
        self.filters = filters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case orderBy = "order_by"
        case orderDir = "order_dir"
        case filters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(pagination, forKey: .pagination)
        try codingContainer.encodeIfPresent(orderBy, forKey: .orderBy)
        try codingContainer.encodeIfPresent(orderDir, forKey: .orderDir)
        try codingContainer.encodeIfPresent(filters, forKey: .filters)
    }
}

