//
// S3AuthRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct S3AuthRequest: Codable, JSONEncodable, Hashable {

    public var accessKey: String
    public var accessKeySecret: String
    /** Enabling this flag will fetch all available content from the source to be listed via list items endpoint */
    public var syncSourceItems: Bool? = true
    /** You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets. */
    public var endpointUrl: String?

    public init(accessKey: String, accessKeySecret: String, syncSourceItems: Bool? = true, endpointUrl: String? = nil) {
        self.accessKey = accessKey
        self.accessKeySecret = accessKeySecret
        self.syncSourceItems = syncSourceItems
        self.endpointUrl = endpointUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessKey = "access_key"
        case accessKeySecret = "access_key_secret"
        case syncSourceItems = "sync_source_items"
        case endpointUrl = "endpoint_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accessKey, forKey: .accessKey)
        try container.encode(accessKeySecret, forKey: .accessKeySecret)
        try container.encodeIfPresent(syncSourceItems, forKey: .syncSourceItems)
        try container.encodeIfPresent(endpointUrl, forKey: .endpointUrl)
    }
}

