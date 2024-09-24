//
// FetchURLsResponse.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FetchURLsResponse: Codable, JSONEncodable, Hashable {

    public var urls: [String]
    public var htmlContent: String
    public var errorMessage: String?

    public init(urls: [String], htmlContent: String, errorMessage: String?) {
        self.urls = urls
        self.htmlContent = htmlContent
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case urls
        case htmlContent = "html_content"
        case errorMessage = "error_message"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(urls, forKey: .urls)
        try codingContainer.encode(htmlContent, forKey: .htmlContent)
        try codingContainer.encode(errorMessage, forKey: .errorMessage)
    }
}

