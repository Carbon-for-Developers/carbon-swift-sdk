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

    /** Pagination parameters for the query. */
    public var pagination: Pagination?
    /** The field on OrganizationUserFilesToSYnc to order the results by. */
    public var orderBy: OrganizationUserFilesToSyncOrderByTypes?
    /** The direction to order the results by. */
    public var orderDir: OrderDir?
    /** Filters to apply to the query. */
    public var filters: OrganizationUserFilesToSyncFilters?
    /** If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint. */
    public var includeRawFile: Bool?
    /** If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint. */
    public var includeParsedTextFile: Bool?
    /** If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint. */
    public var includeAdditionalFiles: Bool?
    /** The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint. */
    public var presignedUrlExpiryTimeSeconds: Int? = 3600

    public init(pagination: Pagination? = nil, orderBy: OrganizationUserFilesToSyncOrderByTypes? = nil, orderDir: OrderDir? = nil, filters: OrganizationUserFilesToSyncFilters? = nil, includeRawFile: Bool? = nil, includeParsedTextFile: Bool? = nil, includeAdditionalFiles: Bool? = nil, presignedUrlExpiryTimeSeconds: Int? = 3600) {
        self.pagination = pagination
        self.orderBy = orderBy
        self.orderDir = orderDir
        self.filters = filters
        self.includeRawFile = includeRawFile
        self.includeParsedTextFile = includeParsedTextFile
        self.includeAdditionalFiles = includeAdditionalFiles
        self.presignedUrlExpiryTimeSeconds = presignedUrlExpiryTimeSeconds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pagination
        case orderBy = "order_by"
        case orderDir = "order_dir"
        case filters
        case includeRawFile = "include_raw_file"
        case includeParsedTextFile = "include_parsed_text_file"
        case includeAdditionalFiles = "include_additional_files"
        case presignedUrlExpiryTimeSeconds = "presigned_url_expiry_time_seconds"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(pagination, forKey: .pagination)
        try codingContainer.encodeIfPresent(orderBy, forKey: .orderBy)
        try codingContainer.encodeIfPresent(orderDir, forKey: .orderDir)
        try codingContainer.encodeIfPresent(filters, forKey: .filters)
        try codingContainer.encodeIfPresent(includeRawFile, forKey: .includeRawFile)
        try codingContainer.encodeIfPresent(includeParsedTextFile, forKey: .includeParsedTextFile)
        try codingContainer.encodeIfPresent(includeAdditionalFiles, forKey: .includeAdditionalFiles)
        try codingContainer.encodeIfPresent(presignedUrlExpiryTimeSeconds, forKey: .presignedUrlExpiryTimeSeconds)
    }
}

