//
// DataSourceConfiguration.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DataSourceConfiguration: Codable, JSONEncodable, Hashable {

    /** List of allowed file formats for the organization. An empty list means all file formats are allowed. */
    public var allowedFileFormats: [String]?
    /** Used to set the format Google Workspace documents (Docs, Sheets, Slides) are stored as for raw files uploads in S3. The default format is TXT */
    public var googleWorkspaceDocsSaveAs: String?

    public init(allowedFileFormats: [String]? = nil, googleWorkspaceDocsSaveAs: String? = nil) {
        self.allowedFileFormats = allowedFileFormats
        self.googleWorkspaceDocsSaveAs = googleWorkspaceDocsSaveAs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowedFileFormats = "allowed_file_formats"
        case googleWorkspaceDocsSaveAs = "google_workspace_docs_save_as"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allowedFileFormats, forKey: .allowedFileFormats)
        try container.encodeIfPresent(googleWorkspaceDocsSaveAs, forKey: .googleWorkspaceDocsSaveAs)
    }
}

