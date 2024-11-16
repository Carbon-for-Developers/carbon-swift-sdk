//
// S3GetFileInput.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct S3GetFileInput: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var bucket: String?
    public var _prefix: String?

    public init(id: String? = nil, bucket: String? = nil, _prefix: String? = nil) {
        self.id = id
        self.bucket = bucket
        self._prefix = _prefix
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case bucket
        case _prefix = "prefix"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encodeIfPresent(id, forKey: .id)
        try codingContainer.encodeIfPresent(bucket, forKey: .bucket)
        try codingContainer.encodeIfPresent(_prefix, forKey: ._prefix)
    }
}

