//
// AuthenticationProperty.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AuthenticationProperty: Codable, JSONEncodable, Hashable {

    public var source: AnyCodable?
    public var accessToken: String
    public var refreshToken: String?
    public var workspaceId: String
    public var tenantName: String
    public var siteName: String
    public var subdomain: String
    public var accessTokenSecret: String
    public var username: String
    public var zoteroId: String
    public var organizationName: String
    public var domain: String
    public var apiKey: String
    public var accessKey: String
    public var accessKeySecret: String
    /** You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets. */
    public var endpointUrl: String?

    public init(source: AnyCodable?, accessToken: String, refreshToken: String? = nil, workspaceId: String, tenantName: String, siteName: String, subdomain: String, accessTokenSecret: String, username: String, zoteroId: String, organizationName: String, domain: String, apiKey: String, accessKey: String, accessKeySecret: String, endpointUrl: String? = nil) {
        self.source = source
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.workspaceId = workspaceId
        self.tenantName = tenantName
        self.siteName = siteName
        self.subdomain = subdomain
        self.accessTokenSecret = accessTokenSecret
        self.username = username
        self.zoteroId = zoteroId
        self.organizationName = organizationName
        self.domain = domain
        self.apiKey = apiKey
        self.accessKey = accessKey
        self.accessKeySecret = accessKeySecret
        self.endpointUrl = endpointUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case workspaceId = "workspace_id"
        case tenantName = "tenant_name"
        case siteName = "site_name"
        case subdomain
        case accessTokenSecret = "access_token_secret"
        case username
        case zoteroId = "zotero_id"
        case organizationName = "organization_name"
        case domain
        case apiKey = "api_key"
        case accessKey = "access_key"
        case accessKeySecret = "access_key_secret"
        case endpointUrl = "endpoint_url"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encode(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encode(workspaceId, forKey: .workspaceId)
        try container.encode(tenantName, forKey: .tenantName)
        try container.encode(siteName, forKey: .siteName)
        try container.encode(subdomain, forKey: .subdomain)
        try container.encode(accessTokenSecret, forKey: .accessTokenSecret)
        try container.encode(username, forKey: .username)
        try container.encode(zoteroId, forKey: .zoteroId)
        try container.encode(organizationName, forKey: .organizationName)
        try container.encode(domain, forKey: .domain)
        try container.encode(apiKey, forKey: .apiKey)
        try container.encode(accessKey, forKey: .accessKey)
        try container.encode(accessKeySecret, forKey: .accessKeySecret)
        try container.encodeIfPresent(endpointUrl, forKey: .endpointUrl)
    }
}

