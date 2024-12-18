//
// WhiteLabelCreateRequestInner.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct WhiteLabelCreateRequestInner: Codable, JSONEncodable, Hashable {

    public enum DataSourceType: String, Codable, CaseIterable {
        case intercom = "INTERCOM"
        case notion = "NOTION"
        case slack = "SLACK"
        case zendesk = "ZENDESK"
        case outlook = "OUTLOOK"
        case gmail = "GMAIL"
        case servicenow = "SERVICENOW"
        case salesforce = "SALESFORCE"
        case zotero = "ZOTERO"
        case box = "BOX"
        case confluence = "CONFLUENCE"
        case dropbox = "DROPBOX"
        case googleCloudStorage = "GOOGLE_CLOUD_STORAGE"
        case gong = "GONG"
    }
    public var dataSourceType: DataSourceType
    public var credentials: Credentials

    public init(dataSourceType: DataSourceType, credentials: Credentials) {
        self.dataSourceType = dataSourceType
        self.credentials = credentials
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataSourceType = "data_source_type"
        case credentials
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(dataSourceType, forKey: .dataSourceType)
        try codingContainer.encode(credentials, forKey: .credentials)
    }
}

