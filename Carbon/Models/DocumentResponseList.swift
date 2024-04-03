//
// DocumentResponseList.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DocumentResponseList: Codable, JSONEncodable, Hashable {

    public var documents: [DocumentResponse]

    public init(documents: [DocumentResponse]) {
        self.documents = documents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(documents, forKey: .documents)
    }
}

