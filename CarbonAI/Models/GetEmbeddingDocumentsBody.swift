//
// GetEmbeddingDocumentsBody.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetEmbeddingDocumentsBody: Codable, JSONEncodable, Hashable {

    /** A set of tags to limit the search to. Deprecated and may be removed in the future. */
    public var tags: [String: Tags1]?
    /** Query for which to get related chunks and embeddings. */
    public var query: String
    /** Optional query vector for which to get related chunks and embeddings. It must have been         generated by the same model used to generate the embeddings across which the search is being conducted. Cannot         provide both `query` and `query_vector`. */
    public var queryVector: [Double]?
    /** Number of related chunks to return. */
    public var k: Int
    /** Optional list of file IDs to limit the search to */
    public var fileIds: [Int]?
    /** Optional list of parent file IDs to limit the search to. A parent file describes a file to which         another file belongs (e.g. a folder) */
    @available(*, deprecated, message: "This property is deprecated.")
    public var parentFileIds: [Int]?
    /** Flag to control whether or not to include all children of filtered files in the embedding search. */
    public var includeAllChildren: Bool? = false
    /** A set of tags to limit the search to. Use this instead of `tags`, which is deprecated. */
    public var tagsV2: AnyCodable?
    /** Flag to control whether or not to include tags for each chunk in the response. */
    public var includeTags: Bool?
    /** Flag to control whether or not to include embedding vectors in the response. */
    public var includeVectors: Bool?
    /** Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response. */
    public var includeRawFile: Bool?
    /** Flag to control whether or not to perform hybrid search. */
    public var hybridSearch: Bool?
    public var hybridSearchTuningParameters: HybridSearchTuningParamsNullable?
    public var mediaType: FileContentTypesNullable?
    public var embeddingModel: EmbeddingGeneratorsNullable?
    /** Flag to control whether or not to include file-level metadata in the response. This metadata         will be included in the `content_metadata` field of each document along with chunk/embedding level metadata. */
    public var includeFileLevelMetadata: Bool? = false
    /** Flag to control whether or not to perform a high accuracy embedding search. By default, this is set to false.         If true, the search may return more accurate results, but may take longer to complete. */
    public var highAccuracy: Bool? = false
    public var rerank: RerankParamsNullable?
    /** Filter files based on their type at the source (for example help center tickets and articles) */
    public var fileTypesAtSource: [HelpdeskFileTypes]?

    public init(tags: [String: Tags1]? = nil, query: String, queryVector: [Double]? = nil, k: Int, fileIds: [Int]? = nil, parentFileIds: [Int]? = nil, includeAllChildren: Bool? = false, tagsV2: AnyCodable? = nil, includeTags: Bool? = nil, includeVectors: Bool? = nil, includeRawFile: Bool? = nil, hybridSearch: Bool? = nil, hybridSearchTuningParameters: HybridSearchTuningParamsNullable? = nil, mediaType: FileContentTypesNullable? = nil, embeddingModel: EmbeddingGeneratorsNullable? = nil, includeFileLevelMetadata: Bool? = false, highAccuracy: Bool? = false, rerank: RerankParamsNullable? = nil, fileTypesAtSource: [HelpdeskFileTypes]? = nil) {
        self.tags = tags
        self.query = query
        self.queryVector = queryVector
        self.k = k
        self.fileIds = fileIds
        self.parentFileIds = parentFileIds
        self.includeAllChildren = includeAllChildren
        self.tagsV2 = tagsV2
        self.includeTags = includeTags
        self.includeVectors = includeVectors
        self.includeRawFile = includeRawFile
        self.hybridSearch = hybridSearch
        self.hybridSearchTuningParameters = hybridSearchTuningParameters
        self.mediaType = mediaType
        self.embeddingModel = embeddingModel
        self.includeFileLevelMetadata = includeFileLevelMetadata
        self.highAccuracy = highAccuracy
        self.rerank = rerank
        self.fileTypesAtSource = fileTypesAtSource
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tags
        case query
        case queryVector = "query_vector"
        case k
        case fileIds = "file_ids"
        case parentFileIds = "parent_file_ids"
        case includeAllChildren = "include_all_children"
        case tagsV2 = "tags_v2"
        case includeTags = "include_tags"
        case includeVectors = "include_vectors"
        case includeRawFile = "include_raw_file"
        case hybridSearch = "hybrid_search"
        case hybridSearchTuningParameters = "hybrid_search_tuning_parameters"
        case mediaType = "media_type"
        case embeddingModel = "embedding_model"
        case includeFileLevelMetadata = "include_file_level_metadata"
        case highAccuracy = "high_accuracy"
        case rerank
        case fileTypesAtSource = "file_types_at_source"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tags, forKey: .tags)
        try container.encode(query, forKey: .query)
        try container.encodeIfPresent(queryVector, forKey: .queryVector)
        try container.encode(k, forKey: .k)
        try container.encodeIfPresent(fileIds, forKey: .fileIds)
        try container.encodeIfPresent(parentFileIds, forKey: .parentFileIds)
        try container.encodeIfPresent(includeAllChildren, forKey: .includeAllChildren)
        try container.encodeIfPresent(tagsV2, forKey: .tagsV2)
        try container.encodeIfPresent(includeTags, forKey: .includeTags)
        try container.encodeIfPresent(includeVectors, forKey: .includeVectors)
        try container.encodeIfPresent(includeRawFile, forKey: .includeRawFile)
        try container.encodeIfPresent(hybridSearch, forKey: .hybridSearch)
        try container.encodeIfPresent(hybridSearchTuningParameters, forKey: .hybridSearchTuningParameters)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
        try container.encodeIfPresent(embeddingModel, forKey: .embeddingModel)
        try container.encodeIfPresent(includeFileLevelMetadata, forKey: .includeFileLevelMetadata)
        try container.encodeIfPresent(highAccuracy, forKey: .highAccuracy)
        try container.encodeIfPresent(rerank, forKey: .rerank)
        try container.encodeIfPresent(fileTypesAtSource, forKey: .fileTypesAtSource)
    }
}

