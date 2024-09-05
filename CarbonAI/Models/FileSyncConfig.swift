//
// FileSyncConfig.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FileSyncConfig: Codable, JSONEncodable, Hashable {

    /** File types to automatically sync when the data source connects. Only a subset of file types can be          controlled. If not supported, then they will always be synced */
    public var autoSyncedSourceTypes: [AutoSyncedSourceTypesPropertyInner]?
    /** Automatically sync attachments from files where supported. Currently applies to Helpdesk Tickets */
    public var syncAttachments: Bool? = false
    /** Detect audio language before transcription for audio files */
    public var detectAudioLanguage: Bool? = false
    public var transcriptionService: TranscriptionServiceNullable?
    /** Detect multiple speakers and label segments of speech by speaker for audio files. */
    public var includeSpeakerLabels: Bool? = false
    /** Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files. */
    public var splitRows: Bool? = false
    /** If this flag is enabled, the file will be chunked and stored with Carbon,           but no embeddings will be generated. This overrides the skip_embedding_generation flag. */
    public var generateChunksOnly: Bool? = false

    public init(autoSyncedSourceTypes: [AutoSyncedSourceTypesPropertyInner]? = nil, syncAttachments: Bool? = false, detectAudioLanguage: Bool? = false, transcriptionService: TranscriptionServiceNullable? = nil, includeSpeakerLabels: Bool? = false, splitRows: Bool? = false, generateChunksOnly: Bool? = false) {
        self.autoSyncedSourceTypes = autoSyncedSourceTypes
        self.syncAttachments = syncAttachments
        self.detectAudioLanguage = detectAudioLanguage
        self.transcriptionService = transcriptionService
        self.includeSpeakerLabels = includeSpeakerLabels
        self.splitRows = splitRows
        self.generateChunksOnly = generateChunksOnly
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case autoSyncedSourceTypes = "auto_synced_source_types"
        case syncAttachments = "sync_attachments"
        case detectAudioLanguage = "detect_audio_language"
        case transcriptionService = "transcription_service"
        case includeSpeakerLabels = "include_speaker_labels"
        case splitRows = "split_rows"
        case generateChunksOnly = "generate_chunks_only"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(autoSyncedSourceTypes, forKey: .autoSyncedSourceTypes)
        try container.encodeIfPresent(syncAttachments, forKey: .syncAttachments)
        try container.encodeIfPresent(detectAudioLanguage, forKey: .detectAudioLanguage)
        try container.encodeIfPresent(transcriptionService, forKey: .transcriptionService)
        try container.encodeIfPresent(includeSpeakerLabels, forKey: .includeSpeakerLabels)
        try container.encodeIfPresent(splitRows, forKey: .splitRows)
        try container.encodeIfPresent(generateChunksOnly, forKey: .generateChunksOnly)
    }
}

