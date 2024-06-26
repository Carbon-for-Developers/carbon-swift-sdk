//
// OrganizationUserFilesToSyncQueryInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OrganizationUserFilesToSyncQueryInput: Codable, JSONEncodable, Hashable {

    public var pagination: Pagination?
    public var orderBy: OrganizationUserFilesToSyncOrderByTypes?
    public var orderDir: OrderDir?
    public var filters: OrganizationUserFilesToSyncFilters?
    public var includeRawFile: Bool?
    public var includeParsedTextFile: Bool?
    public var includeAdditionalFiles: Bool?

    public init(pagination: Pagination? = nil, orderBy: OrganizationUserFilesToSyncOrderByTypes? = nil, orderDir: OrderDir? = nil, filters: OrganizationUserFilesToSyncFilters? = nil, includeRawFile: Bool? = nil, includeParsedTextFile: Bool? = nil, includeAdditionalFiles: Bool? = nil) {
        self.pagination = pagination
        self.orderBy = orderBy
        self.orderDir = orderDir
        self.filters = filters
        self.includeRawFile = includeRawFile
        self.includeParsedTextFile = includeParsedTextFile
        self.includeAdditionalFiles = includeAdditionalFiles
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case orderBy = "order_by"
        case orderDir = "order_dir"
        case filters
        case includeRawFile = "include_raw_file"
        case includeParsedTextFile = "include_parsed_text_file"
        case includeAdditionalFiles = "include_additional_files"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pagination, forKey: .pagination)
        try container.encodeIfPresent(orderBy, forKey: .orderBy)
        try container.encodeIfPresent(orderDir, forKey: .orderDir)
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(includeRawFile, forKey: .includeRawFile)
        try container.encodeIfPresent(includeParsedTextFile, forKey: .includeParsedTextFile)
        try container.encodeIfPresent(includeAdditionalFiles, forKey: .includeAdditionalFiles)
    }
}

