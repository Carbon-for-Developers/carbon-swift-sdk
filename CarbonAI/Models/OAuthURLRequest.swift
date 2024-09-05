//
// OAuthURLRequest.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OAuthURLRequest: Codable, JSONEncodable, Hashable {

    public var tags: AnyCodable?
    public var scope: String?
    public var service: ExternalDataSourceType
    public var chunkSize: Int? = 1500
    public var chunkOverlap: Int? = 20
    public var skipEmbeddingGeneration: Bool? = false
    public var embeddingModel: EmbeddingGeneratorsNullable?
    public var zendeskSubdomain: String?
    public var microsoftTenant: String?
    public var sharepointSiteName: String?
    public var confluenceSubdomain: String?
    public var generateSparseVectors: Bool? = false
    public var prependFilenameToChunks: Bool? = false
    /** Number of objects per chunk. For csv, tsv, xlsx, and json files only. */
    public var maxItemsPerChunk: Int?
    public var salesforceDomain: String?
    /** Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk */
    public var syncFilesOnConnection: Bool? = true
    public var setPageAsBoundary: Bool? = false
    /** Used to specify a data source to sync from if you have multiple connected. It can be skipped if          you only have one data source of that type connected or are connecting a new account. */
    public var dataSourceId: Int?
    /** Used to connect a new data source. If not specified, we will attempt to create a sync URL         for an existing data source based on type and ID. */
    public var connectingNewAccount: Bool? = false
    /** This request id will be added to all files that get synced using the generated OAuth URL */
    public var requestId: String?
    /** Enable OCR for files that support it. Supported formats: pdf, png, jpg */
    public var useOcr: Bool? = false
    public var parsePdfTablesWithOcr: Bool? = false
    /** Enable integration's file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT */
    public var enableFilePicker: Bool? = true
    /** Enabling this flag will fetch all available content from the source to be listed via list items endpoint */
    public var syncSourceItems: Bool? = true
    /** Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources. */
    public var incrementalSync: Bool? = false
    public var fileSyncConfig: FileSyncConfigNullable?
    /** Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources. */
    public var automaticallyOpenFilePicker: Bool?
    public var servicenowCredentials: ServiceNowCredentialsNullable?

    public init(tags: AnyCodable? = nil, scope: String? = nil, service: ExternalDataSourceType, chunkSize: Int? = 1500, chunkOverlap: Int? = 20, skipEmbeddingGeneration: Bool? = false, embeddingModel: EmbeddingGeneratorsNullable? = nil, zendeskSubdomain: String? = nil, microsoftTenant: String? = nil, sharepointSiteName: String? = nil, confluenceSubdomain: String? = nil, generateSparseVectors: Bool? = false, prependFilenameToChunks: Bool? = false, maxItemsPerChunk: Int? = nil, salesforceDomain: String? = nil, syncFilesOnConnection: Bool? = true, setPageAsBoundary: Bool? = false, dataSourceId: Int? = nil, connectingNewAccount: Bool? = false, requestId: String? = nil, useOcr: Bool? = false, parsePdfTablesWithOcr: Bool? = false, enableFilePicker: Bool? = true, syncSourceItems: Bool? = true, incrementalSync: Bool? = false, fileSyncConfig: FileSyncConfigNullable? = nil, automaticallyOpenFilePicker: Bool? = nil, servicenowCredentials: ServiceNowCredentialsNullable? = nil) {
        self.tags = tags
        self.scope = scope
        self.service = service
        self.chunkSize = chunkSize
        self.chunkOverlap = chunkOverlap
        self.skipEmbeddingGeneration = skipEmbeddingGeneration
        self.embeddingModel = embeddingModel
        self.zendeskSubdomain = zendeskSubdomain
        self.microsoftTenant = microsoftTenant
        self.sharepointSiteName = sharepointSiteName
        self.confluenceSubdomain = confluenceSubdomain
        self.generateSparseVectors = generateSparseVectors
        self.prependFilenameToChunks = prependFilenameToChunks
        self.maxItemsPerChunk = maxItemsPerChunk
        self.salesforceDomain = salesforceDomain
        self.syncFilesOnConnection = syncFilesOnConnection
        self.setPageAsBoundary = setPageAsBoundary
        self.dataSourceId = dataSourceId
        self.connectingNewAccount = connectingNewAccount
        self.requestId = requestId
        self.useOcr = useOcr
        self.parsePdfTablesWithOcr = parsePdfTablesWithOcr
        self.enableFilePicker = enableFilePicker
        self.syncSourceItems = syncSourceItems
        self.incrementalSync = incrementalSync
        self.fileSyncConfig = fileSyncConfig
        self.automaticallyOpenFilePicker = automaticallyOpenFilePicker
        self.servicenowCredentials = servicenowCredentials
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case scope
        case service
        case chunkSize = "chunk_size"
        case chunkOverlap = "chunk_overlap"
        case skipEmbeddingGeneration = "skip_embedding_generation"
        case embeddingModel = "embedding_model"
        case zendeskSubdomain = "zendesk_subdomain"
        case microsoftTenant = "microsoft_tenant"
        case sharepointSiteName = "sharepoint_site_name"
        case confluenceSubdomain = "confluence_subdomain"
        case generateSparseVectors = "generate_sparse_vectors"
        case prependFilenameToChunks = "prepend_filename_to_chunks"
        case maxItemsPerChunk = "max_items_per_chunk"
        case salesforceDomain = "salesforce_domain"
        case syncFilesOnConnection = "sync_files_on_connection"
        case setPageAsBoundary = "set_page_as_boundary"
        case dataSourceId = "data_source_id"
        case connectingNewAccount = "connecting_new_account"
        case requestId = "request_id"
        case useOcr = "use_ocr"
        case parsePdfTablesWithOcr = "parse_pdf_tables_with_ocr"
        case enableFilePicker = "enable_file_picker"
        case syncSourceItems = "sync_source_items"
        case incrementalSync = "incremental_sync"
        case fileSyncConfig = "file_sync_config"
        case automaticallyOpenFilePicker = "automatically_open_file_picker"
        case servicenowCredentials = "servicenow_credentials"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encode(service, forKey: .service)
        try container.encodeIfPresent(chunkSize, forKey: .chunkSize)
        try container.encodeIfPresent(chunkOverlap, forKey: .chunkOverlap)
        try container.encodeIfPresent(skipEmbeddingGeneration, forKey: .skipEmbeddingGeneration)
        try container.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(zendeskSubdomain, forKey: .zendeskSubdomain)
        try container.encodeIfPresent(microsoftTenant, forKey: .microsoftTenant)
        try container.encodeIfPresent(sharepointSiteName, forKey: .sharepointSiteName)
        try container.encodeIfPresent(confluenceSubdomain, forKey: .confluenceSubdomain)
        try container.encodeIfPresent(generateSparseVectors, forKey: .generateSparseVectors)
        try container.encodeIfPresent(prependFilenameToChunks, forKey: .prependFilenameToChunks)
        try container.encodeIfPresent(maxItemsPerChunk, forKey: .maxItemsPerChunk)
        try container.encodeIfPresent(salesforceDomain, forKey: .salesforceDomain)
        try container.encodeIfPresent(syncFilesOnConnection, forKey: .syncFilesOnConnection)
        try container.encodeIfPresent(setPageAsBoundary, forKey: .setPageAsBoundary)
        try container.encodeIfPresent(dataSourceId, forKey: .dataSourceId)
        try container.encodeIfPresent(connectingNewAccount, forKey: .connectingNewAccount)
        try container.encodeIfPresent(requestId, forKey: .requestId)
        try container.encodeIfPresent(useOcr, forKey: .useOcr)
        try container.encodeIfPresent(parsePdfTablesWithOcr, forKey: .parsePdfTablesWithOcr)
        try container.encodeIfPresent(enableFilePicker, forKey: .enableFilePicker)
        try container.encodeIfPresent(syncSourceItems, forKey: .syncSourceItems)
        try container.encodeIfPresent(incrementalSync, forKey: .incrementalSync)
        try container.encodeIfPresent(fileSyncConfig, forKey: .fileSyncConfig)
        try container.encodeIfPresent(automaticallyOpenFilePicker, forKey: .automaticallyOpenFilePicker)
        try container.encodeIfPresent(servicenowCredentials, forKey: .servicenowCredentials)
    }
}

