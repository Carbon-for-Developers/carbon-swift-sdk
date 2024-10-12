//
// PRFile.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PRFile: Codable, JSONEncodable, Hashable {

    public var sha: String
    public var filename: String
    public var status: FileStatus
    public var additions: Int
    public var deletions: Int
    public var changes: Int
    public var blobUrl: String
    public var rawUrl: String
    public var contentsUrl: String
    public var remoteData: AnyCodable?

    public init(sha: String, filename: String, status: FileStatus, additions: Int, deletions: Int, changes: Int, blobUrl: String, rawUrl: String, contentsUrl: String, remoteData: AnyCodable?) {
        self.sha = sha
        self.filename = filename
        self.status = status
        self.additions = additions
        self.deletions = deletions
        self.changes = changes
        self.blobUrl = blobUrl
        self.rawUrl = rawUrl
        self.contentsUrl = contentsUrl
        self.remoteData = remoteData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sha
        case filename
        case status
        case additions
        case deletions
        case changes
        case blobUrl = "blob_url"
        case rawUrl = "raw_url"
        case contentsUrl = "contents_url"
        case remoteData = "remote_data"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(sha, forKey: .sha)
        try codingContainer.encode(filename, forKey: .filename)
        try codingContainer.encode(status, forKey: .status)
        try codingContainer.encode(additions, forKey: .additions)
        try codingContainer.encode(deletions, forKey: .deletions)
        try codingContainer.encode(changes, forKey: .changes)
        try codingContainer.encode(blobUrl, forKey: .blobUrl)
        try codingContainer.encode(rawUrl, forKey: .rawUrl)
        try codingContainer.encode(contentsUrl, forKey: .contentsUrl)
        try codingContainer.encode(remoteData, forKey: .remoteData)
    }
}
