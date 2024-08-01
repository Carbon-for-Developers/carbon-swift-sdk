//
// SentWebhookPayloadObjectObjectId.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum SentWebhookPayloadObjectObjectId: Codable, JSONEncodable, Hashable {
    case typeInt(Int)
    case typeString(String)
    case typeIntArray([Int])
    case typeStringArray([String])

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeInt(let value):
            try container.encode(value)
        case .typeString(let value):
            try container.encode(value)
        case .typeIntArray(let value):
            try container.encode(value)
        case .typeStringArray(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Int.self) {
            self = .typeInt(value)
        } else if let value = try? container.decode(String.self) {
            self = .typeString(value)
        } else if let value = try? container.decode([Int].self) {
            self = .typeIntArray(value)
        } else if let value = try? container.decode([String].self) {
            self = .typeStringArray(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SentWebhookPayloadObjectObjectId"))
        }
    }
}
