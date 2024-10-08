//
// PresignedURLResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PresignedURLResponse: Codable, JSONEncodable, Hashable {

    public var presignedUrl: String

    public init(presignedUrl: String) {
        self.presignedUrl = presignedUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case presignedUrl = "presigned_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(presignedUrl, forKey: .presignedUrl)
    }
}

