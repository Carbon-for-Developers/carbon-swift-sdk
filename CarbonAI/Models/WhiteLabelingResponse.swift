//
// WhiteLabelingResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WhiteLabelingResponse: Codable, JSONEncodable, Hashable {

    public var removeBranding: Bool
    public var integrations: AnyCodable
    public var customLimits: AnyCodable

    public init(removeBranding: Bool, integrations: AnyCodable, customLimits: AnyCodable) {
        self.removeBranding = removeBranding
        self.integrations = integrations
        self.customLimits = customLimits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case removeBranding = "remove_branding"
        case integrations
        case customLimits = "custom_limits"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(removeBranding, forKey: .removeBranding)
        try container.encode(integrations, forKey: .integrations)
        try container.encode(customLimits, forKey: .customLimits)
    }
}

