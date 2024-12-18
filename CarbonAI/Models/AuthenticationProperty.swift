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

    public enum Source: String, Codable, CaseIterable {
        case gong = "GONG"
    }
    public var source: Source
    public var accessToken: String
    public var refreshToken: String?
    public var workspaceId: String
    public var tenantName: String?
    public var siteName: String?
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
    public var accountName: String
    public var accountKey: String
    public var instanceSubdomain: String
    public var clientId: String
    public var clientSecret: String
    public var redirectUri: String
    public var gongAccountEmail: String

    public init(source: Source, accessToken: String, refreshToken: String? = nil, workspaceId: String, tenantName: String? = nil, siteName: String? = nil, subdomain: String, accessTokenSecret: String, username: String, zoteroId: String, organizationName: String, domain: String, apiKey: String, accessKey: String, accessKeySecret: String, endpointUrl: String? = nil, accountName: String, accountKey: String, instanceSubdomain: String, clientId: String, clientSecret: String, redirectUri: String, gongAccountEmail: String) {
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
        self.accountName = accountName
        self.accountKey = accountKey
        self.instanceSubdomain = instanceSubdomain
        self.clientId = clientId
        self.clientSecret = clientSecret
        self.redirectUri = redirectUri
        self.gongAccountEmail = gongAccountEmail
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
        case accountName = "account_name"
        case accountKey = "account_key"
        case instanceSubdomain = "instance_subdomain"
        case clientId = "client_id"
        case clientSecret = "client_secret"
        case redirectUri = "redirect_uri"
        case gongAccountEmail = "gong_account_email"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(accessToken, forKey: .accessToken)
        try codingContainer.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try codingContainer.encode(workspaceId, forKey: .workspaceId)
        try codingContainer.encodeIfPresent(tenantName, forKey: .tenantName)
        try codingContainer.encodeIfPresent(siteName, forKey: .siteName)
        try codingContainer.encode(subdomain, forKey: .subdomain)
        try codingContainer.encode(accessTokenSecret, forKey: .accessTokenSecret)
        try codingContainer.encode(username, forKey: .username)
        try codingContainer.encode(zoteroId, forKey: .zoteroId)
        try codingContainer.encode(organizationName, forKey: .organizationName)
        try codingContainer.encode(domain, forKey: .domain)
        try codingContainer.encode(apiKey, forKey: .apiKey)
        try codingContainer.encode(accessKey, forKey: .accessKey)
        try codingContainer.encode(accessKeySecret, forKey: .accessKeySecret)
        try codingContainer.encodeIfPresent(endpointUrl, forKey: .endpointUrl)
        try codingContainer.encode(accountName, forKey: .accountName)
        try codingContainer.encode(accountKey, forKey: .accountKey)
        try codingContainer.encode(instanceSubdomain, forKey: .instanceSubdomain)
        try codingContainer.encode(clientId, forKey: .clientId)
        try codingContainer.encode(clientSecret, forKey: .clientSecret)
        try codingContainer.encode(redirectUri, forKey: .redirectUri)
        try codingContainer.encode(gongAccountEmail, forKey: .gongAccountEmail)
    }
}

