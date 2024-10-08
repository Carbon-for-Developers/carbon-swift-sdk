//
// CommentsInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CommentsInput: Codable, JSONEncodable, Hashable {

    public var dataSourceId: Int
    public var includeRemoteData: Bool? = false
    /** Full name of the repository, denoted as {owner}/{repo} */
    public var repository: String
    public var page: Int? = 1
    public var pageSize: Int? = 30
    public var nextCursor: String?
    public var pullNumber: Int
    public var orderBy: CommentsOrderBy?
    public var orderDir: OrderDirV2Nullable?

    public init(dataSourceId: Int, includeRemoteData: Bool? = false, repository: String, page: Int? = 1, pageSize: Int? = 30, nextCursor: String? = nil, pullNumber: Int, orderBy: CommentsOrderBy? = nil, orderDir: OrderDirV2Nullable? = nil) {
        self.dataSourceId = dataSourceId
        self.includeRemoteData = includeRemoteData
        self.repository = repository
        self.page = page
        self.pageSize = pageSize
        self.nextCursor = nextCursor
        self.pullNumber = pullNumber
        self.orderBy = orderBy
        self.orderDir = orderDir
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataSourceId = "data_source_id"
        case includeRemoteData = "include_remote_data"
        case repository
        case page
        case pageSize = "page_size"
        case nextCursor = "next_cursor"
        case pullNumber = "pull_number"
        case orderBy = "order_by"
        case orderDir = "order_dir"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(dataSourceId, forKey: .dataSourceId)
        try codingContainer.encodeIfPresent(includeRemoteData, forKey: .includeRemoteData)
        try codingContainer.encode(repository, forKey: .repository)
        try codingContainer.encodeIfPresent(page, forKey: .page)
        try codingContainer.encodeIfPresent(pageSize, forKey: .pageSize)
        try codingContainer.encodeIfPresent(nextCursor, forKey: .nextCursor)
        try codingContainer.encode(pullNumber, forKey: .pullNumber)
        try codingContainer.encodeIfPresent(orderBy, forKey: .orderBy)
        try codingContainer.encodeIfPresent(orderDir, forKey: .orderDir)
    }
}

