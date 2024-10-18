//
// GoogleDriveCredentials.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GoogleDriveCredentials: Codable, JSONEncodable, Hashable {

    public var clientId: String
    public var redirectUri: String
    public var clientSecret: String?
    public var apiKey: String?

    public init(clientId: String, redirectUri: String, clientSecret: String? = nil, apiKey: String? = nil) {
        self.clientId = clientId
        self.redirectUri = redirectUri
        self.clientSecret = clientSecret
        self.apiKey = apiKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clientId = "client_id"
        case redirectUri = "redirect_uri"
        case clientSecret = "client_secret"
        case apiKey = "api_key"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(clientId, forKey: .clientId)
        try codingContainer.encode(redirectUri, forKey: .redirectUri)
        try codingContainer.encodeIfPresent(clientSecret, forKey: .clientSecret)
        try codingContainer.encodeIfPresent(apiKey, forKey: .apiKey)
    }
}

