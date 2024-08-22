<div align="center">

[![Visit Carbon](./header.png)](https://carbon.ai)

# [Carbon](https://carbon.ai)<a id="carbon"></a>

Connect external data to LLMs, no matter the source.

[![CocoaPods](https://img.shields.io/badge/pod-v0.3.26-blue)](https://cocoapods.org/pods/CarbonAI)

</div>

## Table of Contents<a id="table-of-contents"></a>

<!-- toc -->

- [Installation](#installation)
  * [Swift Package Manager](#swift-package-manager)
  * [Carthage](#carthage)
  * [CocoaPods](#cocoapods)
- [Getting Started](#getting-started)
- [Reference](#reference)
  * [`carbonai.auth.getAccessToken`](#carbonaiauthgetaccesstoken)
  * [`carbonai.auth.getWhiteLabeling`](#carbonaiauthgetwhitelabeling)
  * [`carbonai.dataSources.queryUserDataSources`](#carbonaidatasourcesqueryuserdatasources)
  * [`carbonai.dataSources.revokeAccessToken`](#carbonaidatasourcesrevokeaccesstoken)
  * [`carbonai.embeddings.getDocuments`](#carbonaiembeddingsgetdocuments)
  * [`carbonai.embeddings.getEmbeddingsAndChunks`](#carbonaiembeddingsgetembeddingsandchunks)
  * [`carbonai.embeddings.list`](#carbonaiembeddingslist)
  * [`carbonai.embeddings.uploadChunksAndEmbeddings`](#carbonaiembeddingsuploadchunksandembeddings)
  * [`carbonai.files.createUserFileTags`](#carbonaifilescreateuserfiletags)
  * [`carbonai.files.delete`](#carbonaifilesdelete)
  * [`carbonai.files.deleteFileTags`](#carbonaifilesdeletefiletags)
  * [`carbonai.files.deleteMany`](#carbonaifilesdeletemany)
  * [`carbonai.files.deleteV2`](#carbonaifilesdeletev2)
  * [`carbonai.files.getParsedFile`](#carbonaifilesgetparsedfile)
  * [`carbonai.files.getRawFile`](#carbonaifilesgetrawfile)
  * [`carbonai.files.modifyColdStorageParameters`](#carbonaifilesmodifycoldstorageparameters)
  * [`carbonai.files.moveToHotStorage`](#carbonaifilesmovetohotstorage)
  * [`carbonai.files.queryUserFiles`](#carbonaifilesqueryuserfiles)
  * [`carbonai.files.queryUserFilesDeprecated`](#carbonaifilesqueryuserfilesdeprecated)
  * [`carbonai.files.resync`](#carbonaifilesresync)
  * [`carbonai.files.upload`](#carbonaifilesupload)
  * [`carbonai.files.uploadFromUrl`](#carbonaifilesuploadfromurl)
  * [`carbonai.files.uploadText`](#carbonaifilesuploadtext)
  * [`carbonai.integrations.cancel`](#carbonaiintegrationscancel)
  * [`carbonai.integrations.connectDataSource`](#carbonaiintegrationsconnectdatasource)
  * [`carbonai.integrations.connectFreshdesk`](#carbonaiintegrationsconnectfreshdesk)
  * [`carbonai.integrations.connectGitbook`](#carbonaiintegrationsconnectgitbook)
  * [`carbonai.integrations.createAwsIamUser`](#carbonaiintegrationscreateawsiamuser)
  * [`carbonai.integrations.getOauthUrl`](#carbonaiintegrationsgetoauthurl)
  * [`carbonai.integrations.listConfluencePages`](#carbonaiintegrationslistconfluencepages)
  * [`carbonai.integrations.listConversations`](#carbonaiintegrationslistconversations)
  * [`carbonai.integrations.listDataSourceItems`](#carbonaiintegrationslistdatasourceitems)
  * [`carbonai.integrations.listFolders`](#carbonaiintegrationslistfolders)
  * [`carbonai.integrations.listGitbookSpaces`](#carbonaiintegrationslistgitbookspaces)
  * [`carbonai.integrations.listLabels`](#carbonaiintegrationslistlabels)
  * [`carbonai.integrations.listOutlookCategories`](#carbonaiintegrationslistoutlookcategories)
  * [`carbonai.integrations.listRepos`](#carbonaiintegrationslistrepos)
  * [`carbonai.integrations.syncConfluence`](#carbonaiintegrationssyncconfluence)
  * [`carbonai.integrations.syncDataSourceItems`](#carbonaiintegrationssyncdatasourceitems)
  * [`carbonai.integrations.syncFiles`](#carbonaiintegrationssyncfiles)
  * [`carbonai.integrations.syncGitHub`](#carbonaiintegrationssyncgithub)
  * [`carbonai.integrations.syncGitbook`](#carbonaiintegrationssyncgitbook)
  * [`carbonai.integrations.syncGmail`](#carbonaiintegrationssyncgmail)
  * [`carbonai.integrations.syncOutlook`](#carbonaiintegrationssyncoutlook)
  * [`carbonai.integrations.syncRepos`](#carbonaiintegrationssyncrepos)
  * [`carbonai.integrations.syncRssFeed`](#carbonaiintegrationssyncrssfeed)
  * [`carbonai.integrations.syncS3Files`](#carbonaiintegrationssyncs3files)
  * [`carbonai.integrations.syncSlack`](#carbonaiintegrationssyncslack)
  * [`carbonai.organizations.callGet`](#carbonaiorganizationscallget)
  * [`carbonai.organizations.update`](#carbonaiorganizationsupdate)
  * [`carbonai.organizations.updateStats`](#carbonaiorganizationsupdatestats)
  * [`carbonai.users.callGet`](#carbonaiuserscallget)
  * [`carbonai.users.delete`](#carbonaiusersdelete)
  * [`carbonai.users.list`](#carbonaiuserslist)
  * [`carbonai.users.toggleUserFeatures`](#carbonaiuserstoggleuserfeatures)
  * [`carbonai.users.updateUsers`](#carbonaiusersupdateusers)
  * [`carbonai.utilities.fetchUrls`](#carbonaiutilitiesfetchurls)
  * [`carbonai.utilities.fetchWebpage`](#carbonaiutilitiesfetchwebpage)
  * [`carbonai.utilities.fetchYoutubeTranscripts`](#carbonaiutilitiesfetchyoutubetranscripts)
  * [`carbonai.utilities.processSitemap`](#carbonaiutilitiesprocesssitemap)
  * [`carbonai.utilities.scrapeSitemap`](#carbonaiutilitiesscrapesitemap)
  * [`carbonai.utilities.scrapeWeb`](#carbonaiutilitiesscrapeweb)
  * [`carbonai.utilities.searchUrls`](#carbonaiutilitiessearchurls)
  * [`carbonai.utilities.userWebpages`](#carbonaiutilitiesuserwebpages)
  * [`carbonai.webhooks.addUrl`](#carbonaiwebhooksaddurl)
  * [`carbonai.webhooks.deleteUrl`](#carbonaiwebhooksdeleteurl)
  * [`carbonai.webhooks.urls`](#carbonaiwebhooksurls)

<!-- tocstop -->

## Installation<a id="installation"></a>


### Swift Package Manager<a id="swift-package-manager"></a>

1. In Xcode, select *File > Add Packages…* and enter `https://github.com/Carbon-for-Developers/carbon-swift-sdk` as the repository URL.
1. Select the latest version number from our [tags page](https://github.com/Carbon-for-Developers/carbon-swift-sdk/tags).
1. Add the *CarbonAI* product to the [target of your app](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app).

### Carthage<a id="carthage"></a>

1. Add this line to your `Cartfile`:
```shell
github "Carbon-for-Developers/carbon-swift-sdk"
```
2. Follow the [Carthage installation instructions](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos).
3. In the future, to update to the latest version of the SDK, run the following command: `carthage update carbon-swift-sdk`

### CocoaPods<a id="cocoapods"></a>

1. Add `source 'https://github.com/CocoaPods/Specs.git'` to your `Podfile`
2. Add `pod 'CarbonAI', '~> 0.3.26'` to your `Podfile`

Your `Podfile` should look like:
```ruby
# Podfile
source 'https://github.com/CocoaPods/Specs.git'

target 'Example' do
  pod 'CarbonAI', '~> 0.3.26'
end
```
3. Run `pod install`

```shell
❯ pod install
Analyzing dependencies
Downloading dependencies
Installing CarbonAI 0.3.26
Generating Pods project
Integrating client project
Pod installation complete! There is 1 dependency from the Podfile and 2 total pods installed.
```

4. In the future, to update to the latest version of the SDK, run: `pod update CarbonAI`

## Getting Started<a id="getting-started"></a>

```swift
import CarbonAI

// 1) Get an access token for a customer
let carbon = CarbonAIClient(
	accessToken: nil,
    apiKey: "API_KEY",
    customerId: "CUSTOMER_ID"
)

let token = try await carbon.auth.getAccessToken()

// 2) Use the access token to authenticate moving forward
let carbonWithToken = CarbonAIClient(
	accessToken: token!.accessToken,
	apiKey: nil,
	customerId: nil
)

// use SDK as usual
white_labeling = try await carbonWithToken.auth.get_white_labeling()
// etc.

```

## Reference<a id="reference"></a>


### `carbonai.auth.getAccessToken`<a id="carbonaiauthgetaccesstoken"></a>

Get Access Token

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let getAccessTokenResponse = try await carbonai.auth.getAccessToken()
```

#### 🔄 Return<a id="🔄-return"></a>

[TokenResponse](./CarbonAI/Models/TokenResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/auth/v1/access_token` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.auth.getWhiteLabeling`<a id="carbonaiauthgetwhitelabeling"></a>

Returns whether or not the organization is white labeled and which integrations are white labeled

:param current_user: the current user
:param db: the database session
:return: a WhiteLabelingResponse

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let getWhiteLabelingResponse = try await carbonai.auth.getWhiteLabeling()
```

#### 🔄 Return<a id="🔄-return"></a>

[WhiteLabelingResponse](./CarbonAI/Models/WhiteLabelingResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/auth/v1/white_labeling` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.dataSources.queryUserDataSources`<a id="carbonaidatasourcesqueryuserdatasources"></a>

User Data Sources

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = OrganizationUserDataSourceOrderByColumns(
    
)
let orderDir = OrderDir(
    
)
let filters = OrganizationUserDataSourceFilters(
    source: DataSourceTypeNullable.googleCloudStorage,
    ids: [
    123
    ],
    revokedAccess: false
)
let queryUserDataSourcesResponse = try await carbonai.dataSources.queryUserDataSources(
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    filters: filters
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `OrganizationUserDataSourceOrderByColumns`<a id="order_by-organizationuserdatasourceorderbycolumns"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### filters: [`OrganizationUserDataSourceFilters`](./CarbonAI/Models/OrganizationUserDataSourceFilters.swift)<a id="filters-organizationuserdatasourcefilterscarbonaimodelsorganizationuserdatasourcefiltersswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[OrganizationUserDataSourceResponse](./CarbonAI/Models/OrganizationUserDataSourceResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_data_sources` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.dataSources.revokeAccessToken`<a id="carbonaidatasourcesrevokeaccesstoken"></a>

Revoke Access Token

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let revokeAccessTokenResponse = try await carbonai.dataSources.revokeAccessToken(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/revoke_access_token` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.embeddings.getDocuments`<a id="carbonaiembeddingsgetdocuments"></a>

For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
and `tags` are specified, `tags` is ignored. `tags_v2` enables
building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
```json
{
    "OR": [
        {
            "key": "subject",
            "value": "holy-bible",
            "negate": false
        },
        {
            "key": "person-of-interest",
            "value": "jesus christ",
            "negate": false
        },
        {
            "key": "genre",
            "value": "religion",
            "negate": true
        }
        {
            "AND": [
                {
                    "key": "subject",
                    "value": "tao-te-ching",
                    "negate": false
                },
                {
                    "key": "author",
                    "value": "lao-tzu",
                    "negate": false
                }
            ]
        }
    ]
}
```
In this case, files will be filtered such that:
1. "subject" = "holy-bible" OR
2. "person-of-interest" = "jesus christ" OR
3. "genre" != "religion" OR
4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"

Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
1. "key" isn't optional and must be a `string`
2. "value" isn't optional and can be `any` or list[`any`]
3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
the resulting query. It is `false` by default.


When querying embeddings, you can optionally specify the `media_type` parameter in your request. By default (if
not set), it is equal to "TEXT". This means that the query will be performed over files that have
been parsed as text (for now, this covers all files except image files). If it is equal to "IMAGE",
the query will be performed over image files (for now, `.jpg` and `.png` files). You can think of this
field as an additional filter on top of any filters set in `file_ids` and


When `hybrid_search` is set to true, a combination of keyword search and semantic search are used to rank
and select candidate embeddings during information retrieval. By default, these search methods are weighted
equally during the ranking process. To adjust the weight (or "importance") of each search method, you can use
the `hybrid_search_tuning_parameters` property. The description for the different tuning parameters are:
- `weight_a`: weight to assign to semantic search
- `weight_b`: weight to assign to keyword search

You must ensure that `sum(weight_a, weight_b,..., weight_n)` for all *n* weights is equal to 1. The equality
has an error tolerance of 0.001 to account for possible floating point issues.

In order to use hybrid search for a customer across a set of documents, two flags need to be enabled:
1. Use the `/modify_user_configuration` endpoint to to enable `sparse_vectors` for the customer. The payload
body for this request is below:
```
{
  "configuration_key_name": "sparse_vectors",
  "value": {
    "enabled": true
  }
}
```
2. Make sure hybrid search is enabled for the documents across which you want to perform the search. For the
`/uploadfile` endpoint, this can be done by setting the following query parameter: `generate_sparse_vectors=true`


Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let query = "query_example"
let k = 987
let tags = "TODO"
let queryVector = [
123
]
let fileIds = [
123
]
let parentFileIds = [
123
]
let includeAllChildren = true
let tagsV2 = "TODO"
let includeTags = true
let includeVectors = true
let includeRawFile = true
let hybridSearch = true
let hybridSearchTuningParameters = HybridSearchTuningParamsNullable(
    weightA: 123,
    weightB: 123
)
let mediaType = FileContentTypesNullable(
    
)
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let includeFileLevelMetadata = true
let highAccuracy = true
let rerank = RerankParamsNullable(
    model: "model_example"
)
let fileTypesAtSource = [
HelpdeskFileTypes.ticket
]
let excludeColdStorageFiles = true
let getDocumentsResponse = try await carbonai.embeddings.getDocuments(
    query: query,
    k: k,
    tags: tags,
    queryVector: queryVector,
    fileIds: fileIds,
    parentFileIds: parentFileIds,
    includeAllChildren: includeAllChildren,
    tagsV2: tagsV2,
    includeTags: includeTags,
    includeVectors: includeVectors,
    includeRawFile: includeRawFile,
    hybridSearch: hybridSearch,
    hybridSearchTuningParameters: hybridSearchTuningParameters,
    mediaType: mediaType,
    embeddingModel: embeddingModel,
    includeFileLevelMetadata: includeFileLevelMetadata,
    highAccuracy: highAccuracy,
    rerank: rerank,
    fileTypesAtSource: fileTypesAtSource,
    excludeColdStorageFiles: excludeColdStorageFiles
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `String`<a id="query-string"></a>

Query for which to get related chunks and embeddings.


##### k: `Int`<a id="k-int"></a>

Number of related chunks to return.


##### tags: `[String: Tags1]`<a id="tags-string-tags1"></a>

A set of tags to limit the search to. Deprecated and may be removed in the future.


##### query_vector: `[Double]`<a id="query_vector-double"></a>

Optional query vector for which to get related chunks and embeddings. It must have been         generated by the same model used to generate the embeddings across which the search is being conducted. Cannot         provide both `query` and `query_vector`.


##### file_ids: `[Int]`<a id="file_ids-int"></a>

Optional list of file IDs to limit the search to


##### parent_file_ids: `[Int]`<a id="parent_file_ids-int"></a>

Optional list of parent file IDs to limit the search to. A parent file describes a file to which         another file belongs (e.g. a folder)


##### include_all_children: `Bool`<a id="include_all_children-bool"></a>

Flag to control whether or not to include all children of filtered files in the embedding search.


##### tags_v2: `AnyCodable`<a id="tags_v2-anycodable"></a>

A set of tags to limit the search to. Use this instead of `tags`, which is deprecated.


##### include_tags: `Bool`<a id="include_tags-bool"></a>

Flag to control whether or not to include tags for each chunk in the response.


##### include_vectors: `Bool`<a id="include_vectors-bool"></a>

Flag to control whether or not to include embedding vectors in the response.


##### include_raw_file: `Bool`<a id="include_raw_file-bool"></a>

Flag to control whether or not to include a signed URL to the raw file containing each chunk         in the response.


##### hybrid_search: `Bool`<a id="hybrid_search-bool"></a>

Flag to control whether or not to perform hybrid search.


##### hybrid_search_tuning_parameters: [`HybridSearchTuningParamsNullable`](./CarbonAI/Models/HybridSearchTuningParamsNullable.swift)<a id="hybrid_search_tuning_parameters-hybridsearchtuningparamsnullablecarbonaimodelshybridsearchtuningparamsnullableswift"></a>


##### media_type: `FileContentTypesNullable`<a id="media_type-filecontenttypesnullable"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### include_file_level_metadata: `Bool`<a id="include_file_level_metadata-bool"></a>

Flag to control whether or not to include file-level metadata in the response. This metadata         will be included in the `content_metadata` field of each document along with chunk/embedding level metadata.


##### high_accuracy: `Bool`<a id="high_accuracy-bool"></a>

Flag to control whether or not to perform a high accuracy embedding search. By default, this is set to false.         If true, the search may return more accurate results, but may take longer to complete.


##### rerank: [`RerankParamsNullable`](./CarbonAI/Models/RerankParamsNullable.swift)<a id="rerank-rerankparamsnullablecarbonaimodelsrerankparamsnullableswift"></a>


##### file_types_at_source: `[HelpdeskFileTypes]`<a id="file_types_at_source-helpdeskfiletypes"></a>

Filter files based on their type at the source (for example help center tickets and articles)


##### exclude_cold_storage_files: `Bool`<a id="exclude_cold_storage_files-bool"></a>

Flag to control whether or not to exclude files that are not in hot storage. If set to False, then an error will be returned if any filtered         files are in cold storage.


#### 🔄 Return<a id="🔄-return"></a>

[DocumentResponseList](./CarbonAI/Models/DocumentResponseList.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/embeddings` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.embeddings.getEmbeddingsAndChunks`<a id="carbonaiembeddingsgetembeddingsandchunks"></a>

Retrieve Embeddings And Content

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = EmbeddingsAndChunksFilters(
    userFileId: 123,
    embeddingModel: EmbeddingGeneratorsNullable.openai
)
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = EmbeddingsAndChunksOrderByColumns(
    
)
let orderDir = OrderDir(
    
)
let includeVectors = true
let getEmbeddingsAndChunksResponse = try await carbonai.embeddings.getEmbeddingsAndChunks(
    filters: filters,
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    includeVectors: includeVectors
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`EmbeddingsAndChunksFilters`](./CarbonAI/Models/EmbeddingsAndChunksFilters.swift)<a id="filters-embeddingsandchunksfilterscarbonaimodelsembeddingsandchunksfiltersswift"></a>


##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `EmbeddingsAndChunksOrderByColumns`<a id="order_by-embeddingsandchunksorderbycolumns"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### include_vectors: `Bool`<a id="include_vectors-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[EmbeddingsAndChunksResponse](./CarbonAI/Models/EmbeddingsAndChunksResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/text_chunks` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.embeddings.list`<a id="carbonaiembeddingslist"></a>

Retrieve Embeddings And Content V2

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = OrganizationUserFilesToSyncOrderByTypes(
    
)
let orderDir = OrderDir(
    
)
let includeVectors = true
let listResponse = try await carbonai.embeddings.list(
    filters: filters,
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    includeVectors: includeVectors
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `OrganizationUserFilesToSyncOrderByTypes`<a id="order_by-organizationuserfilestosyncorderbytypes"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### include_vectors: `Bool`<a id="include_vectors-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[EmbeddingsAndChunksResponse](./CarbonAI/Models/EmbeddingsAndChunksResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/list_chunks_and_embeddings` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.embeddings.uploadChunksAndEmbeddings`<a id="carbonaiembeddingsuploadchunksandembeddings"></a>

Upload Chunks And Embeddings

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let embeddingModel = EmbeddingGenerators(
    
)
let chunksAndEmbeddings = [
SingleChunksAndEmbeddingsUploadInput(
    fileId: 123,
    chunkSize: 123,
    chunkOverlap: 123,
    chunksAndEmbeddings: [
    ChunksAndEmbeddings(
        chunkNumber: 123,
        chunk: "chunk_example",
        embedding: [
        123
        ]
    )
    ]
)
]
let overwriteExisting = true
let chunksOnly = true
let customCredentials = "TODO"
let uploadChunksAndEmbeddingsResponse = try await carbonai.embeddings.uploadChunksAndEmbeddings(
    embeddingModel: embeddingModel,
    chunksAndEmbeddings: chunksAndEmbeddings,
    overwriteExisting: overwriteExisting,
    chunksOnly: chunksOnly,
    customCredentials: customCredentials
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### chunks_and_embeddings: `[SingleChunksAndEmbeddingsUploadInput]`<a id="chunks_and_embeddings-singlechunksandembeddingsuploadinput"></a>


##### overwrite_existing: `Bool`<a id="overwrite_existing-bool"></a>


##### chunks_only: `Bool`<a id="chunks_only-bool"></a>


##### custom_credentials: `[String: AnyCodable]`<a id="custom_credentials-string-anycodable"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_chunks_and_embeddings` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.createUserFileTags`<a id="carbonaifilescreateuserfiletags"></a>

A tag is a key-value pair that can be added to a file. This pair can then be used
for searches (e.g. embedding searches) in order to narrow down the scope of the search.
A file can have any number of tags. The following are reserved keys that cannot be used:
- db_embedding_id
- organization_id
- user_id
- organization_user_file_id

Carbon currently supports two data types for tag values - `string` and `list<string>`.
Keys can only be `string`. If values other than `string` and `list<string>` are used,
they're automatically converted to strings (e.g. 4 will become "4").

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let tags = "TODO"
let organizationUserFileId = 987
let createUserFileTagsResponse = try await carbonai.files.createUserFileTags(
    tags: tags,
    organizationUserFileId: organizationUserFileId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tags: `[String: Tags1]`<a id="tags-string-tags1"></a>


##### organization_user_file_id: `Int`<a id="organization_user_file_id-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/create_user_file_tags` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.delete`<a id="carbonaifilesdelete"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Delete File Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let fileId = 987
let deleteResponse = try await carbonai.files.delete(
    fileId: fileId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### fileId: `Int`<a id="fileid-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/deletefile/{file_id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.deleteFileTags`<a id="carbonaifilesdeletefiletags"></a>

Delete File Tags

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let tags = [
"inner_example"
]
let organizationUserFileId = 987
let deleteFileTagsResponse = try await carbonai.files.deleteFileTags(
    tags: tags,
    organizationUserFileId: organizationUserFileId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### tags: `[String]`<a id="tags-string"></a>


##### organization_user_file_id: `Int`<a id="organization_user_file_id-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_user_file_tags` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.deleteMany`<a id="carbonaifilesdeletemany"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Delete Files Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let fileIds = [
123
]
let syncStatuses = [
ExternalFileSyncStatuses.delayed
]
let deleteNonSyncedOnly = true
let sendWebhook = true
let deleteChildFiles = true
let deleteManyResponse = try await carbonai.files.deleteMany(
    fileIds: fileIds,
    syncStatuses: syncStatuses,
    deleteNonSyncedOnly: deleteNonSyncedOnly,
    sendWebhook: sendWebhook,
    deleteChildFiles: deleteChildFiles
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_ids: `[Int]`<a id="file_ids-int"></a>


##### sync_statuses: `[ExternalFileSyncStatuses]`<a id="sync_statuses-externalfilesyncstatuses"></a>


##### delete_non_synced_only: `Bool`<a id="delete_non_synced_only-bool"></a>


##### send_webhook: `Bool`<a id="send_webhook-bool"></a>


##### delete_child_files: `Bool`<a id="delete_child_files-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_files` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.deleteV2`<a id="carbonaifilesdeletev2"></a>

Delete Files V2 Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let sendWebhook = true
let preserveFileRecord = true
let deleteV2Response = try await carbonai.files.deleteV2(
    filters: filters,
    sendWebhook: sendWebhook,
    preserveFileRecord: preserveFileRecord
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


##### send_webhook: `Bool`<a id="send_webhook-bool"></a>


##### preserve_file_record: `Bool`<a id="preserve_file_record-bool"></a>

Whether or not to delete all data related to the file from the database, BUT to preserve the file metadata, allowing for         resyncs. By default `preserve_file_record` is false, which means that all data related to the file *as well as* its metadata will be deleted. Note that         even if `preserve_file_record` is true, raw files uploaded via the `uploadfile` endpoint still cannot be resynced.


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_files_v2` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.getParsedFile`<a id="carbonaifilesgetparsedfile"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let fileId = 987
let getParsedFileResponse = try await carbonai.files.getParsedFile(
    fileId: fileId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### fileId: `Int`<a id="fileid-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[PresignedURLResponse](./CarbonAI/Models/PresignedURLResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/parsed_file/{file_id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.getRawFile`<a id="carbonaifilesgetrawfile"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let fileId = 987
let getRawFileResponse = try await carbonai.files.getRawFile(
    fileId: fileId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### fileId: `Int`<a id="fileid-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[PresignedURLResponse](./CarbonAI/Models/PresignedURLResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/raw_file/{file_id}` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.modifyColdStorageParameters`<a id="carbonaifilesmodifycoldstorageparameters"></a>

Modify Cold Storage Parameters

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let enableColdStorage = true
let hotStorageTimeToLive = 987
let modifyColdStorageParametersResponse = try await carbonai.files.modifyColdStorageParameters(
    filters: filters,
    enableColdStorage: enableColdStorage,
    hotStorageTimeToLive: hotStorageTimeToLive
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


##### enable_cold_storage: `Bool`<a id="enable_cold_storage-bool"></a>


##### hot_storage_time_to_live: `Int`<a id="hot_storage_time_to_live-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/modify_cold_storage_parameters` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.moveToHotStorage`<a id="carbonaifilesmovetohotstorage"></a>

Move To Hot Storage

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let moveToHotStorageResponse = try await carbonai.files.moveToHotStorage(
    filters: filters
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/move_to_hot_storage` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.queryUserFiles`<a id="carbonaifilesqueryuserfiles"></a>

For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
and `tags` are specified, `tags` is ignored. `tags_v2` enables
building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
```json
{
    "OR": [
        {
            "key": "subject",
            "value": "holy-bible",
            "negate": false
        },
        {
            "key": "person-of-interest",
            "value": "jesus christ",
            "negate": false
        },
        {
            "key": "genre",
            "value": "religion",
            "negate": true
        }
        {
            "AND": [
                {
                    "key": "subject",
                    "value": "tao-te-ching",
                    "negate": false
                },
                {
                    "key": "author",
                    "value": "lao-tzu",
                    "negate": false
                }
            ]
        }
    ]
}
```
In this case, files will be filtered such that:
1. "subject" = "holy-bible" OR
2. "person-of-interest" = "jesus christ" OR
3. "genre" != "religion" OR
4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"

Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
1. "key" isn't optional and must be a `string`
2. "value" isn't optional and can be `any` or list[`any`]
3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
the resulting query. It is `false` by default.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = OrganizationUserFilesToSyncOrderByTypes(
    
)
let orderDir = OrderDir(
    
)
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let includeRawFile = true
let includeParsedTextFile = true
let includeAdditionalFiles = true
let queryUserFilesResponse = try await carbonai.files.queryUserFiles(
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    filters: filters,
    includeRawFile: includeRawFile,
    includeParsedTextFile: includeParsedTextFile,
    includeAdditionalFiles: includeAdditionalFiles
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `OrganizationUserFilesToSyncOrderByTypes`<a id="order_by-organizationuserfilestosyncorderbytypes"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


##### include_raw_file: `Bool`<a id="include_raw_file-bool"></a>


##### include_parsed_text_file: `Bool`<a id="include_parsed_text_file-bool"></a>


##### include_additional_files: `Bool`<a id="include_additional_files-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFilesV2](./CarbonAI/Models/UserFilesV2.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_files_v2` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.queryUserFilesDeprecated`<a id="carbonaifilesqueryuserfilesdeprecated"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This route is deprecated. Use `/user_files_v2` instead.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = OrganizationUserFilesToSyncOrderByTypes(
    
)
let orderDir = OrderDir(
    
)
let filters = OrganizationUserFilesToSyncFilters(
    tags: "TODO",
    source: SourceProperty(
        
    ),
    name: "name_example",
    tagsV2: "TODO",
    ids: [
    123
    ],
    externalFileIds: [
    "externalFileIds_example"
    ],
    syncStatuses: [
    ExternalFileSyncStatuses.delayed
    ],
    parentFileIds: [
    123
    ],
    organizationUserDataSourceId: [
    123
    ],
    embeddingGenerators: [
    EmbeddingGenerators.openai
    ],
    rootFilesOnly: false,
    includeAllChildren: false,
    nonSyncedOnly: false,
    requestIds: [
    "requestIds_example"
    ],
    syncErrorMessage: "syncErrorMessage_example",
    includeContainers: false,
    externalUrls: [
    "externalUrls_example"
    ],
    fileTypesAtSource: [
    HelpdeskFileTypes.ticket
    ]
)
let includeRawFile = true
let includeParsedTextFile = true
let includeAdditionalFiles = true
let queryUserFilesDeprecatedResponse = try await carbonai.files.queryUserFilesDeprecated(
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    filters: filters,
    includeRawFile: includeRawFile,
    includeParsedTextFile: includeParsedTextFile,
    includeAdditionalFiles: includeAdditionalFiles
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `OrganizationUserFilesToSyncOrderByTypes`<a id="order_by-organizationuserfilestosyncorderbytypes"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### filters: [`OrganizationUserFilesToSyncFilters`](./CarbonAI/Models/OrganizationUserFilesToSyncFilters.swift)<a id="filters-organizationuserfilestosyncfilterscarbonaimodelsorganizationuserfilestosyncfiltersswift"></a>


##### include_raw_file: `Bool`<a id="include_raw_file-bool"></a>


##### include_parsed_text_file: `Bool`<a id="include_parsed_text_file-bool"></a>


##### include_additional_files: `Bool`<a id="include_additional_files-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_files` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.resync`<a id="carbonaifilesresync"></a>

Resync File

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let fileId = 987
let chunkSize = 987
let chunkOverlap = 987
let forceEmbeddingGeneration = true
let resyncResponse = try await carbonai.files.resync(
    fileId: fileId,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    forceEmbeddingGeneration: forceEmbeddingGeneration
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file_id: `Int`<a id="file_id-int"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### force_embedding_generation: `Bool`<a id="force_embedding_generation-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/resync_file` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.upload`<a id="carbonaifilesupload"></a>

This endpoint is used to directly upload local files to Carbon. The `POST` request should be a multipart form request.
Note that the `set_page_as_boundary` query parameter is applicable only to PDFs for now. When this value is set,
PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates
of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description
of all possible query parameters:
- `chunk_size`: the chunk size (in tokens) applied when splitting the document
- `chunk_overlap`: the chunk overlap (in tokens) applied when splitting the document
- `skip_embedding_generation`: whether or not to skip the generation of chunks and embeddings
- `set_page_as_boundary`: described above
- `embedding_model`: the model used to generate embeddings for the document chunks
- `use_ocr`: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs
- `generate_sparse_vectors`: whether or not to generate sparse vectors for the file. Required for hybrid search.
- `prepend_filename_to_chunks`: whether or not to prepend the filename to the chunk text


Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let file = URL(string: "https://example.com")!
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = false
let setPageAsBoundary = false
let embeddingModel = EmbeddingModel(
    
)
let useOcr = false
let generateSparseVectors = false
let prependFilenameToChunks = false
let maxItemsPerChunk = 987
let parsePdfTablesWithOcr = false
let detectAudioLanguage = false
let transcriptionService = TranscriptionServiceNullable(
    
)
let includeSpeakerLabels = false
let mediaType = FileContentTypesNullable(
    
)
let splitRows = false
let enableColdStorage = false
let hotStorageTimeToLive = 987
let uploadResponse = try await carbonai.files.upload(
    file: file,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    setPageAsBoundary: setPageAsBoundary,
    embeddingModel: embeddingModel,
    useOcr: useOcr,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    detectAudioLanguage: detectAudioLanguage,
    transcriptionService: transcriptionService,
    includeSpeakerLabels: includeSpeakerLabels,
    mediaType: mediaType,
    splitRows: splitRows,
    enableColdStorage: enableColdStorage,
    hotStorageTimeToLive: hotStorageTimeToLive
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### file: `URL`<a id="file-url"></a>


##### chunkSize: `Int`<a id="chunksize-int"></a>

Chunk size in tiktoken tokens to be used when processing file.


##### chunkOverlap: `Int`<a id="chunkoverlap-int"></a>

Chunk overlap in tiktoken tokens to be used when processing file.


##### skipEmbeddingGeneration: `Bool`<a id="skipembeddinggeneration-bool"></a>

Flag to control whether or not embeddings should be generated and stored             when processing file.


##### setPageAsBoundary: `Bool`<a id="setpageasboundary-bool"></a>

Flag to control whether or not to set the a page's worth of content as the maximum             amount of content that can appear in a chunk. Only valid for PDFs. See description route description for             more information.


##### embeddingModel: [`EmbeddingModel`](./CarbonAI/Models/EmbeddingModel.swift)<a id="embeddingmodel-embeddingmodelcarbonaimodelsembeddingmodelswift"></a>

Embedding model that will be used to embed file chunks.


##### useOcr: `Bool`<a id="useocr-bool"></a>

Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with             tables, images, and/or scanned text.


##### generateSparseVectors: `Bool`<a id="generatesparsevectors-bool"></a>

Whether or not to generate sparse vectors for the file. This is *required* for the file to be a             candidate for hybrid search.


##### prependFilenameToChunks: `Bool`<a id="prependfilenametochunks-bool"></a>

Whether or not to prepend the file's name to chunks.


##### maxItemsPerChunk: `Int`<a id="maxitemsperchunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### parsePdfTablesWithOcr: `Bool`<a id="parsepdftableswithocr-bool"></a>

Whether to use rich table parsing when `use_ocr` is enabled.


##### detectAudioLanguage: `Bool`<a id="detectaudiolanguage-bool"></a>

Whether to automatically detect the language of the uploaded audio file.


##### transcriptionService: `TranscriptionServiceNullable`<a id="transcriptionservice-transcriptionservicenullable"></a>

The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.


##### includeSpeakerLabels: `Bool`<a id="includespeakerlabels-bool"></a>

Detect multiple speakers and label segments of speech by speaker for audio files.


##### mediaType: `FileContentTypesNullable`<a id="mediatype-filecontenttypesnullable"></a>

The media type of the file. If not provided, it will be inferred from the file extension.


##### splitRows: `Bool`<a id="splitrows-bool"></a>

Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files.


##### enableColdStorage: `Bool`<a id="enablecoldstorage-bool"></a>

Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false.


##### hotStorageTimeToLive: `Int`<a id="hotstoragetimetolive-int"></a>

Time in seconds after which the file will be moved to cold storage.


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/uploadfile` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.uploadFromUrl`<a id="carbonaifilesuploadfromurl"></a>

Create Upload File From Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let fileName = "fileName_example"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let setPageAsBoundary = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let useTextract = true
let prependFilenameToChunks = true
let maxItemsPerChunk = 987
let parsePdfTablesWithOcr = true
let detectAudioLanguage = true
let transcriptionService = TranscriptionServiceNullable(
    
)
let includeSpeakerLabels = true
let mediaType = FileContentTypesNullable(
    
)
let splitRows = true
let coldStorageParams = ColdStorageProps(
    enableColdStorage: false,
    hotStorageTimeToLive: 123
)
let uploadFromUrlResponse = try await carbonai.files.uploadFromUrl(
    url: url,
    fileName: fileName,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    setPageAsBoundary: setPageAsBoundary,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    useTextract: useTextract,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    detectAudioLanguage: detectAudioLanguage,
    transcriptionService: transcriptionService,
    includeSpeakerLabels: includeSpeakerLabels,
    mediaType: mediaType,
    splitRows: splitRows,
    coldStorageParams: coldStorageParams
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


##### file_name: `String`<a id="file_name-string"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### set_page_as_boundary: `Bool`<a id="set_page_as_boundary-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### use_textract: `Bool`<a id="use_textract-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### max_items_per_chunk: `Int`<a id="max_items_per_chunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### parse_pdf_tables_with_ocr: `Bool`<a id="parse_pdf_tables_with_ocr-bool"></a>


##### detect_audio_language: `Bool`<a id="detect_audio_language-bool"></a>


##### transcription_service: `TranscriptionServiceNullable`<a id="transcription_service-transcriptionservicenullable"></a>


##### include_speaker_labels: `Bool`<a id="include_speaker_labels-bool"></a>


##### media_type: `FileContentTypesNullable`<a id="media_type-filecontenttypesnullable"></a>


##### split_rows: `Bool`<a id="split_rows-bool"></a>


##### cold_storage_params: [`ColdStorageProps`](./CarbonAI/Models/ColdStorageProps.swift)<a id="cold_storage_params-coldstoragepropscarbonaimodelscoldstoragepropsswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_file_from_url` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.files.uploadText`<a id="carbonaifilesuploadtext"></a>

Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
embedding queries, embeddings from files that used the specified model will be considered in the query.
For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
`COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let contents = "contents_example"
let name = "name_example"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let overwriteFileId = 987
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let generateSparseVectors = true
let coldStorageParams = ColdStorageProps(
    enableColdStorage: false,
    hotStorageTimeToLive: 123
)
let uploadTextResponse = try await carbonai.files.uploadText(
    contents: contents,
    name: name,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    overwriteFileId: overwriteFileId,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    coldStorageParams: coldStorageParams
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### contents: `String`<a id="contents-string"></a>


##### name: `String`<a id="name-string"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### overwrite_file_id: `Int`<a id="overwrite_file_id-int"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### cold_storage_params: [`ColdStorageProps`](./CarbonAI/Models/ColdStorageProps.swift)<a id="cold_storage_params-coldstoragepropscarbonaimodelscoldstoragepropsswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserFile](./CarbonAI/Models/UserFile.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/upload_text` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.cancel`<a id="carbonaiintegrationscancel"></a>

Cancel Data Source Items Sync

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let cancelResponse = try await carbonai.integrations.cancel(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[OrganizationUserDataSourceAPI](./CarbonAI/Models/OrganizationUserDataSourceAPI.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/sync/cancel` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.connectDataSource`<a id="carbonaiintegrationsconnectdatasource"></a>

Connect Data Source

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let authentication = AuthenticationProperty(
    source: "TODO",
    accessToken: "accessToken_example",
    refreshToken: "refreshToken_example",
    workspaceId: "workspaceId_example",
    tenantName: "tenantName_example",
    siteName: "siteName_example",
    subdomain: "subdomain_example",
    accessTokenSecret: "accessTokenSecret_example",
    username: "username_example",
    zoteroId: "zoteroId_example",
    organizationName: "organizationName_example",
    domain: "domain_example",
    apiKey: "apiKey_example",
    accessKey: "accessKey_example",
    accessKeySecret: "accessKeySecret_example",
    endpointUrl: "endpointUrl_example"
)
let syncOptions = SyncOptions(
    tags: "TODO",
    chunkSize: 123,
    chunkOverlap: 123,
    skipEmbeddingGeneration: false,
    embeddingModel: EmbeddingGeneratorsNullable.openai,
    generateSparseVectors: false,
    prependFilenameToChunks: false,
    maxItemsPerChunk: 123,
    syncFilesOnConnection: true,
    setPageAsBoundary: false,
    requestId: "requestId_example",
    enableFilePicker: true,
    syncSourceItems: true,
    incrementalSync: false,
    fileSyncConfig: FileSyncConfigNullable(
        autoSyncedSourceTypes: [
        HelpdeskFileTypes.ticket
        ],
        syncAttachments: false,
        detectAudioLanguage: false,
        transcriptionService: TranscriptionServiceNullable.assemblyai,
        includeSpeakerLabels: false,
        splitRows: false
    ),
    automaticallyOpenFilePicker: false
)
let connectDataSourceResponse = try await carbonai.integrations.connectDataSource(
    authentication: authentication,
    syncOptions: syncOptions
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### authentication: [`AuthenticationProperty`](./CarbonAI/Models/AuthenticationProperty.swift)<a id="authentication-authenticationpropertycarbonaimodelsauthenticationpropertyswift"></a>


##### sync_options: [`SyncOptions`](./CarbonAI/Models/SyncOptions.swift)<a id="sync_options-syncoptionscarbonaimodelssyncoptionsswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[ConnectDataSourceResponse](./CarbonAI/Models/ConnectDataSourceResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/connect` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.connectFreshdesk`<a id="carbonaiintegrationsconnectfreshdesk"></a>

Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517.
Make sure that your API key has the permission to read solutions from your account and you are on a <b>paid</b> plan.
Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will 
trigger an automatic sync of the articles in your "solutions" tab. Additional parameters below can be used to associate 
data with the synced articles or modify the sync behavior.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let domain = "domain_example"
let apiKey = "apiKey_example"
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let syncFilesOnConnection = true
let requestId = "requestId_example"
let syncSourceItems = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let connectFreshdeskResponse = try await carbonai.integrations.connectFreshdesk(
    domain: domain,
    apiKey: apiKey,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    syncFilesOnConnection: syncFilesOnConnection,
    requestId: requestId,
    syncSourceItems: syncSourceItems,
    fileSyncConfig: fileSyncConfig
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### domain: `String`<a id="domain-string"></a>


##### api_key: `String`<a id="api_key-string"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### sync_files_on_connection: `Bool`<a id="sync_files_on_connection-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### sync_source_items: `Bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/freshdesk` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.connectGitbook`<a id="carbonaiintegrationsconnectgitbook"></a>

You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user 
generating access token so make sure you have the permission to access spaces you will be syncing. 
Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you
need to specify the name of organization you will be syncing data from.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let organization = "organization_example"
let accessToken = "accessToken_example"
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let syncFilesOnConnection = true
let requestId = "requestId_example"
let syncSourceItems = true
let connectGitbookResponse = try await carbonai.integrations.connectGitbook(
    organization: organization,
    accessToken: accessToken,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    syncFilesOnConnection: syncFilesOnConnection,
    requestId: requestId,
    syncSourceItems: syncSourceItems
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### organization: `String`<a id="organization-string"></a>


##### access_token: `String`<a id="access_token-string"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### sync_files_on_connection: `Bool`<a id="sync_files_on_connection-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### sync_source_items: `Bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.createAwsIamUser`<a id="carbonaiintegrationscreateawsiamuser"></a>

This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)  
For S3, create a new IAM user with permissions to:
<ol>
<li>List all buckets.</li>
<li>Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry 
the same permissions.</li>
</ol>
Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.  
For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces.
Endpoint URL is required to connect Digital Ocean Spaces.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let accessKey = "accessKey_example"
let accessKeySecret = "accessKeySecret_example"
let syncSourceItems = true
let endpointUrl = "endpointUrl_example"
let createAwsIamUserResponse = try await carbonai.integrations.createAwsIamUser(
    accessKey: accessKey,
    accessKeySecret: accessKeySecret,
    syncSourceItems: syncSourceItems,
    endpointUrl: endpointUrl
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### access_key: `String`<a id="access_key-string"></a>


##### access_key_secret: `String`<a id="access_key_secret-string"></a>


##### sync_source_items: `Bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint


##### endpoint_url: `String`<a id="endpoint_url-string"></a>

You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint.         The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets.


#### 🔄 Return<a id="🔄-return"></a>

[OrganizationUserDataSourceAPI](./CarbonAI/Models/OrganizationUserDataSourceAPI.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/s3` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.getOauthUrl`<a id="carbonaiintegrationsgetoauthurl"></a>

This endpoint can be used to generate the following URLs
- An OAuth URL for OAuth based connectors
- A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the
success state.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let service = ExternalDataSourceType(
    
)
let tags = TODO
let scope = "scope_example"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let zendeskSubdomain = "zendeskSubdomain_example"
let microsoftTenant = "microsoftTenant_example"
let sharepointSiteName = "sharepointSiteName_example"
let confluenceSubdomain = "confluenceSubdomain_example"
let generateSparseVectors = true
let prependFilenameToChunks = true
let maxItemsPerChunk = 987
let salesforceDomain = "salesforceDomain_example"
let syncFilesOnConnection = true
let setPageAsBoundary = true
let dataSourceId = 987
let connectingNewAccount = true
let requestId = "requestId_example"
let useOcr = true
let parsePdfTablesWithOcr = true
let enableFilePicker = true
let syncSourceItems = true
let incrementalSync = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let automaticallyOpenFilePicker = true
let getOauthUrlResponse = try await carbonai.integrations.getOauthUrl(
    service: service,
    tags: tags,
    scope: scope,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    zendeskSubdomain: zendeskSubdomain,
    microsoftTenant: microsoftTenant,
    sharepointSiteName: sharepointSiteName,
    confluenceSubdomain: confluenceSubdomain,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    salesforceDomain: salesforceDomain,
    syncFilesOnConnection: syncFilesOnConnection,
    setPageAsBoundary: setPageAsBoundary,
    dataSourceId: dataSourceId,
    connectingNewAccount: connectingNewAccount,
    requestId: requestId,
    useOcr: useOcr,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    enableFilePicker: enableFilePicker,
    syncSourceItems: syncSourceItems,
    incrementalSync: incrementalSync,
    fileSyncConfig: fileSyncConfig,
    automaticallyOpenFilePicker: automaticallyOpenFilePicker
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### service: `ExternalDataSourceType`<a id="service-externaldatasourcetype"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### scope: `String`<a id="scope-string"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### zendesk_subdomain: `String`<a id="zendesk_subdomain-string"></a>


##### microsoft_tenant: `String`<a id="microsoft_tenant-string"></a>


##### sharepoint_site_name: `String`<a id="sharepoint_site_name-string"></a>


##### confluence_subdomain: `String`<a id="confluence_subdomain-string"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### max_items_per_chunk: `Int`<a id="max_items_per_chunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### salesforce_domain: `String`<a id="salesforce_domain-string"></a>


##### sync_files_on_connection: `Bool`<a id="sync_files_on_connection-bool"></a>

Used to specify whether Carbon should attempt to sync all your files automatically when authorization         is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported         connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk


##### set_page_as_boundary: `Bool`<a id="set_page_as_boundary-bool"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>

Used to specify a data source to sync from if you have multiple connected. It can be skipped if          you only have one data source of that type connected or are connecting a new account.


##### connecting_new_account: `Bool`<a id="connecting_new_account-bool"></a>

Used to connect a new data source. If not specified, we will attempt to create a sync URL         for an existing data source based on type and ID.


##### request_id: `String`<a id="request_id-string"></a>

This request id will be added to all files that get synced using the generated OAuth URL


##### use_ocr: `Bool`<a id="use_ocr-bool"></a>

Enable OCR for files that support it. Supported formats: pdf, png, jpg


##### parse_pdf_tables_with_ocr: `Bool`<a id="parse_pdf_tables_with_ocr-bool"></a>


##### enable_file_picker: `Bool`<a id="enable_file_picker-bool"></a>

Enable integration's file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT


##### sync_source_items: `Bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint


##### incremental_sync: `Bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT. It will be ignored for other data sources.


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


##### automatically_open_file_picker: `Bool`<a id="automatically_open_file_picker-bool"></a>

Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by         BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.


#### 🔄 Return<a id="🔄-return"></a>

[OuthURLResponse](./CarbonAI/Models/OuthURLResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/oauth_url` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listConfluencePages`<a id="carbonaiintegrationslistconfluencepages"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint has been deprecated. Use /integrations/items/list instead.

To begin listing a user's Confluence pages, at least a `data_source_id` of a connected
Confluence account must be specified. This base request returns a list of root pages for
every space the user has access to in a Confluence instance. To traverse further down
the user's page directory, additional requests to this endpoint can be made with the same
`data_source_id` and with `parent_id` set to the id of page from a previous request. For
convenience, the `has_children` property in each directory item in the response list will
flag which pages will return non-empty lists of pages when set as the `parent_id`.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let parentId = "parentId_example"
let listConfluencePagesResponse = try await carbonai.integrations.listConfluencePages(
    dataSourceId: dataSourceId,
    parentId: parentId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### parent_id: `String`<a id="parent_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[ListResponse](./CarbonAI/Models/ListResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/confluence/list` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listConversations`<a id="carbonaiintegrationslistconversations"></a>

List all of your public and private channels, DMs, and Group DMs. The ID from response 
can be used as a filter to sync messages to Carbon   
types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel.
Defaults to public_channel.    
cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request    
data_source_id: Data source needs to be specified if you have linked multiple slack accounts  
exclude_archived: Should archived conversations be excluded, defaults to true

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let types = "types_example"
let cursor = "cursor_example"
let dataSourceId = 987
let excludeArchived = true
let listConversationsResponse = try await carbonai.integrations.listConversations(
    types: types,
    cursor: cursor,
    dataSourceId: dataSourceId,
    excludeArchived: excludeArchived
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### types: `String`<a id="types-string"></a>


##### cursor: `String`<a id="cursor-string"></a>


##### dataSourceId: `Int`<a id="datasourceid-int"></a>


##### excludeArchived: `Bool`<a id="excludearchived-bool"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/slack/conversations` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listDataSourceItems`<a id="carbonaiintegrationslistdatasourceitems"></a>

List Data Source Items

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let parentId = "parentId_example"
let filters = ListItemsFiltersNullable(
    externalIds: [
    "externalIds_example"
    ],
    ids: [
    123
    ],
    name: "name_example",
    rootFilesOnly: false
)
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = ExternalSourceItemsOrderBy(
    
)
let orderDir = OrderDirV2(
    
)
let listDataSourceItemsResponse = try await carbonai.integrations.listDataSourceItems(
    dataSourceId: dataSourceId,
    parentId: parentId,
    filters: filters,
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### parent_id: `String`<a id="parent_id-string"></a>


##### filters: [`ListItemsFiltersNullable`](./CarbonAI/Models/ListItemsFiltersNullable.swift)<a id="filters-listitemsfiltersnullablecarbonaimodelslistitemsfiltersnullableswift"></a>


##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `ExternalSourceItemsOrderBy`<a id="order_by-externalsourceitemsorderby"></a>


##### order_dir: `OrderDirV2`<a id="order_dir-orderdirv2"></a>


#### 🔄 Return<a id="🔄-return"></a>

[ListDataSourceItemsResponse](./CarbonAI/Models/ListDataSourceItemsResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/list` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listFolders`<a id="carbonaiintegrationslistfolders"></a>

After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes 
both system folders like "inbox" and user created folders.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let listFoldersResponse = try await carbonai.integrations.listFolders(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### dataSourceId: `Int`<a id="datasourceid-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/user_folders` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listGitbookSpaces`<a id="carbonaiintegrationslistgitbookspaces"></a>

After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let listGitbookSpacesResponse = try await carbonai.integrations.listGitbookSpaces(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### dataSourceId: `Int`<a id="datasourceid-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook/spaces` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listLabels`<a id="carbonaiintegrationslistlabels"></a>

After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels
will have the type "user" and Gmail's default labels will have the type "system"

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let listLabelsResponse = try await carbonai.integrations.listLabels(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### dataSourceId: `Int`<a id="datasourceid-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gmail/user_labels` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listOutlookCategories`<a id="carbonaiintegrationslistoutlookcategories"></a>

After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently
support listing up to 250 categories.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let listOutlookCategoriesResponse = try await carbonai.integrations.listOutlookCategories(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### dataSourceId: `Int`<a id="datasourceid-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/user_categories` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.listRepos`<a id="carbonaiintegrationslistrepos"></a>

Once you have connected your GitHub account, you can use this endpoint to list the 
    repositories your account has access to. You can use a data source ID or username to fetch from a specific account.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let perPage = 987
let page = 987
let dataSourceId = 987
let listReposResponse = try await carbonai.integrations.listRepos(
    perPage: perPage,
    page: page,
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### perPage: `Int`<a id="perpage-int"></a>


##### page: `Int`<a id="page-int"></a>


##### dataSourceId: `Int`<a id="datasourceid-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github/repos` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncConfluence`<a id="carbonaiintegrationssyncconfluence"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

This endpoint has been deprecated. Use /integrations/files/sync instead.

After listing pages in a user's Confluence account, the set of selected page `ids` and the
connected account's `data_source_id` can be passed into this endpoint to sync them into
Carbon. Additional parameters listed below can be used to associate data to the selected
pages or alter the behavior of the sync.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let ids = IdsProperty(
    
)
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let maxItemsPerChunk = 987
let setPageAsBoundary = true
let requestId = "requestId_example"
let useOcr = true
let parsePdfTablesWithOcr = true
let incrementalSync = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let syncConfluenceResponse = try await carbonai.integrations.syncConfluence(
    dataSourceId: dataSourceId,
    ids: ids,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    setPageAsBoundary: setPageAsBoundary,
    requestId: requestId,
    useOcr: useOcr,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    incrementalSync: incrementalSync,
    fileSyncConfig: fileSyncConfig
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### ids: [`IdsProperty`](./CarbonAI/Models/IdsProperty.swift)<a id="ids-idspropertycarbonaimodelsidspropertyswift"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### max_items_per_chunk: `Int`<a id="max_items_per_chunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### set_page_as_boundary: `Bool`<a id="set_page_as_boundary-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### use_ocr: `Bool`<a id="use_ocr-bool"></a>


##### parse_pdf_tables_with_ocr: `Bool`<a id="parse_pdf_tables_with_ocr-bool"></a>


##### incremental_sync: `Bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT. It will be ignored for other data sources.


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/confluence/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncDataSourceItems`<a id="carbonaiintegrationssyncdatasourceitems"></a>

Sync Data Source Items

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let syncDataSourceItemsResponse = try await carbonai.integrations.syncDataSourceItems(
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[OrganizationUserDataSourceAPI](./CarbonAI/Models/OrganizationUserDataSourceAPI.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/items/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncFiles`<a id="carbonaiintegrationssyncfiles"></a>

After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items' external ids 
as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies
the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will
tell the sync to assume the item is stored in the default Documents drive.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let dataSourceId = 987
let ids = IdsProperty(
    
)
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGeneratorsNullable(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let maxItemsPerChunk = 987
let setPageAsBoundary = true
let requestId = "requestId_example"
let useOcr = true
let parsePdfTablesWithOcr = true
let incrementalSync = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let syncFilesResponse = try await carbonai.integrations.syncFiles(
    dataSourceId: dataSourceId,
    ids: ids,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    setPageAsBoundary: setPageAsBoundary,
    requestId: requestId,
    useOcr: useOcr,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    incrementalSync: incrementalSync,
    fileSyncConfig: fileSyncConfig
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### ids: [`IdsProperty`](./CarbonAI/Models/IdsProperty.swift)<a id="ids-idspropertycarbonaimodelsidspropertyswift"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGeneratorsNullable`<a id="embedding_model-embeddinggeneratorsnullable"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### max_items_per_chunk: `Int`<a id="max_items_per_chunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### set_page_as_boundary: `Bool`<a id="set_page_as_boundary-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### use_ocr: `Bool`<a id="use_ocr-bool"></a>


##### parse_pdf_tables_with_ocr: `Bool`<a id="parse_pdf_tables_with_ocr-bool"></a>


##### incremental_sync: `Bool`<a id="incremental_sync-bool"></a>

Only sync files if they have not already been synced or if the embedding properties have changed.         This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT. It will be ignored for other data sources.


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/files/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncGitHub`<a id="carbonaiintegrationssyncgithub"></a>

Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens.
Make sure that your access token has the permission to read content from your desired repos. Note that if your access token
expires you will need to manually update it through this endpoint.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let username = "username_example"
let accessToken = "accessToken_example"
let syncSourceItems = true
let syncGitHubResponse = try await carbonai.integrations.syncGitHub(
    username: username,
    accessToken: accessToken,
    syncSourceItems: syncSourceItems
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### username: `String`<a id="username-string"></a>


##### access_token: `String`<a id="access_token-string"></a>


##### sync_source_items: `Bool`<a id="sync_source_items-bool"></a>

Enabling this flag will fetch all available content from the source to be listed via list items endpoint


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncGitbook`<a id="carbonaiintegrationssyncgitbook"></a>

You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate 
data with the synced pages or modify the sync behavior.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let spaceIds = [
"inner_example"
]
let dataSourceId = 987
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let requestId = "requestId_example"
let syncGitbookResponse = try await carbonai.integrations.syncGitbook(
    spaceIds: spaceIds,
    dataSourceId: dataSourceId,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    requestId: requestId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### space_ids: `[String]`<a id="space_ids-string"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gitbook/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncGmail`<a id="carbonaiintegrationssyncgmail"></a>

Once you have successfully connected your gmail account, you can choose which emails to sync with us
using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations.
For now, we support a limited set of keys listed below.

<b>label</b>: Inbuilt Gmail labels, for example "Important" or a custom label you created.  
<b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date.
You can also use them in combination to get emails from a certain period.  
<b>is</b>: Can have the following values - starred, important, snoozed, and unread  
<b>from</b>: Email address of the sender  
<b>to</b>: Email address of the recipient  

Using keys or values outside of the specified values can lead to unexpected behaviour.

An example of a basic query with filters can be
```json
{
    "filters": {
            "key": "label",
            "value": "Test"
        }
}
```
Which will list all emails that have the label "Test".

You can use AND and OR operation in the following way:
```json
{
    "filters": {
        "AND": [
            {
                "key": "after",
                "value": "2024/01/07"
            },
            {
                "OR": [
                    {
                        "key": "label",
                        "value": "Personal"
                    },
                    {
                        "key": "is",
                        "value": "starred"
                    }
                ]
            }
        ]
    }
}
```
This will return emails after 7th of Jan that are either starred or have the label "Personal". 
Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
in the above example.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = "TODO"
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let dataSourceId = 987
let requestId = "requestId_example"
let syncAttachments = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let incrementalSync = true
let syncGmailResponse = try await carbonai.integrations.syncGmail(
    filters: filters,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    dataSourceId: dataSourceId,
    requestId: requestId,
    syncAttachments: syncAttachments,
    fileSyncConfig: fileSyncConfig,
    incrementalSync: incrementalSync
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: `AnyCodable`<a id="filters-anycodable"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### sync_attachments: `Bool`<a id="sync_attachments-bool"></a>


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


##### incremental_sync: `Bool`<a id="incremental_sync-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/gmail/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncOutlook`<a id="carbonaiintegrationssyncoutlook"></a>

Once you have successfully connected your Outlook account, you can choose which emails to sync with us
using the filters and folder parameter. "folder" should be the folder you want to sync from Outlook. By default
we get messages from your inbox folder.  
Filters is a JSON object with key value pairs. It also supports AND and OR operations.
For now, we support a limited set of keys listed below.

<b>category</b>: Custom categories that you created in Outlook.  
<b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.    
<b>is</b>: Can have the following values: flagged  
<b>from</b>: Email address of the sender   

An example of a basic query with filters can be
```json
{
    "filters": {
            "key": "category",
            "value": "Test"
        }
}
```
Which will list all emails that have the category "Test".  

Specifying a custom folder in the same query
```json
{
    "folder": "Folder Name",
    "filters": {
            "key": "category",
            "value": "Test"
        }
}
```

You can use AND and OR operation in the following way:
```json
{
    "filters": {
        "AND": [
            {
                "key": "after",
                "value": "2024/01/07"
            },
            {
                "OR": [
                    {
                        "key": "category",
                        "value": "Personal"
                    },
                    {
                        "key": "category",
                        "value": "Test"
                    },
                ]
            }
        ]
    }
}
```
This will return emails after 7th of Jan that have either Personal or Test as category. 
Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
in the above example.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = "TODO"
let tags = "TODO"
let folder = "folder_example"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let dataSourceId = 987
let requestId = "requestId_example"
let syncAttachments = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let incrementalSync = true
let syncOutlookResponse = try await carbonai.integrations.syncOutlook(
    filters: filters,
    tags: tags,
    folder: folder,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    dataSourceId: dataSourceId,
    requestId: requestId,
    syncAttachments: syncAttachments,
    fileSyncConfig: fileSyncConfig,
    incrementalSync: incrementalSync
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: `AnyCodable`<a id="filters-anycodable"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### folder: `String`<a id="folder-string"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### sync_attachments: `Bool`<a id="sync_attachments-bool"></a>


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


##### incremental_sync: `Bool`<a id="incremental_sync-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/outlook/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncRepos`<a id="carbonaiintegrationssyncrepos"></a>

You can retreive repos your token has access to using /integrations/github/repos and sync their content. 
You can also pass full name of any public repository (username/repo-name). This will store the repo content with 
carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let repos = [
"inner_example"
]
let dataSourceId = 987
let syncReposResponse = try await carbonai.integrations.syncRepos(
    repos: repos,
    dataSourceId: dataSourceId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### repos: `[String]`<a id="repos-string"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/github/sync_repos` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncRssFeed`<a id="carbonaiintegrationssyncrssfeed"></a>

Rss Feed

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let requestId = "requestId_example"
let syncRssFeedResponse = try await carbonai.integrations.syncRssFeed(
    url: url,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    requestId: requestId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### request_id: `String`<a id="request_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/rss_feed` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncS3Files`<a id="carbonaiintegrationssyncs3files"></a>

After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name 
and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
data with the selected items or modify the sync behavior

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let ids = [
S3GetFileInput(
    id: "id_example",
    bucket: "bucket_example"
)
]
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let maxItemsPerChunk = 987
let setPageAsBoundary = true
let dataSourceId = 987
let requestId = "requestId_example"
let useOcr = true
let parsePdfTablesWithOcr = true
let fileSyncConfig = FileSyncConfigNullable(
    autoSyncedSourceTypes: [
    HelpdeskFileTypes.ticket
    ],
    syncAttachments: false,
    detectAudioLanguage: false,
    transcriptionService: TranscriptionServiceNullable.assemblyai,
    includeSpeakerLabels: false,
    splitRows: false
)
let syncS3FilesResponse = try await carbonai.integrations.syncS3Files(
    ids: ids,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    maxItemsPerChunk: maxItemsPerChunk,
    setPageAsBoundary: setPageAsBoundary,
    dataSourceId: dataSourceId,
    requestId: requestId,
    useOcr: useOcr,
    parsePdfTablesWithOcr: parsePdfTablesWithOcr,
    fileSyncConfig: fileSyncConfig
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### ids: `[S3GetFileInput]`<a id="ids-s3getfileinput"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### max_items_per_chunk: `Int`<a id="max_items_per_chunk-int"></a>

Number of objects per chunk. For csv, tsv, xlsx, and json files only.


##### set_page_as_boundary: `Bool`<a id="set_page_as_boundary-bool"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### request_id: `String`<a id="request_id-string"></a>


##### use_ocr: `Bool`<a id="use_ocr-bool"></a>


##### parse_pdf_tables_with_ocr: `Bool`<a id="parse_pdf_tables_with_ocr-bool"></a>


##### file_sync_config: [`FileSyncConfigNullable`](./CarbonAI/Models/FileSyncConfigNullable.swift)<a id="file_sync_config-filesyncconfignullablecarbonaimodelsfilesyncconfignullableswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/s3/files` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.integrations.syncSlack`<a id="carbonaiintegrationssyncslack"></a>

You can list all conversations using the endpoint /integrations/slack/conversations. The ID of 
conversation will be used as an input for this endpoint with timestamps as optional filters.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = SlackFilters(
    conversationId: "conversationId_example",
    after: "after_example"
)
let tags = "TODO"
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let embeddingModel = EmbeddingGenerators(
    
)
let generateSparseVectors = true
let prependFilenameToChunks = true
let dataSourceId = 987
let requestId = "requestId_example"
let syncSlackResponse = try await carbonai.integrations.syncSlack(
    filters: filters,
    tags: tags,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    embeddingModel: embeddingModel,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    dataSourceId: dataSourceId,
    requestId: requestId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`SlackFilters`](./CarbonAI/Models/SlackFilters.swift)<a id="filters-slackfilterscarbonaimodelsslackfiltersswift"></a>


##### tags: `AnyCodable`<a id="tags-anycodable"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### data_source_id: `Int`<a id="data_source_id-int"></a>


##### request_id: `String`<a id="request_id-string"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/integrations/slack/sync` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.organizations.callGet`<a id="carbonaiorganizationscallget"></a>

Get Organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let callGetResponse = try await carbonai.organizations.callGet()
```

#### 🔄 Return<a id="🔄-return"></a>

[OrganizationResponse](./CarbonAI/Models/OrganizationResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.organizations.update`<a id="carbonaiorganizationsupdate"></a>

Update Organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let globalUserConfig = UserConfigurationNullable(
    autoSyncEnabledSources: AutoSyncEnabledSourcesProperty(
        
    ),
    maxFiles: 123,
    maxFilesPerUpload: 123
)
let dataSourceConfigs = "TODO"
let updateResponse = try await carbonai.organizations.update(
    globalUserConfig: globalUserConfig,
    dataSourceConfigs: dataSourceConfigs
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### global_user_config: [`UserConfigurationNullable`](./CarbonAI/Models/UserConfigurationNullable.swift)<a id="global_user_config-userconfigurationnullablecarbonaimodelsuserconfigurationnullableswift"></a>


##### data_source_configs: `[String: DataSourceConfiguration]`<a id="data_source_configs-string-datasourceconfiguration"></a>

Used to set organization level defaults for configuration related to data sources.


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization/update` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.organizations.updateStats`<a id="carbonaiorganizationsupdatestats"></a>

Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation
process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the
process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization
endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let updateStatsResponse = try await carbonai.organizations.updateStats()
```

#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/organization/statistics` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.users.callGet`<a id="carbonaiuserscallget"></a>

User Endpoint

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let customerId = "customerId_example"
let callGetResponse = try await carbonai.users.callGet(
    customerId: customerId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_id: `String`<a id="customer_id-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserResponse](./CarbonAI/Models/UserResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.users.delete`<a id="carbonaiusersdelete"></a>

Delete Users

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let customerIds = [
"inner_example"
]
let deleteResponse = try await carbonai.users.delete(
    customerIds: customerIds
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_ids: `[String]`<a id="customer_ids-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_users` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.users.list`<a id="carbonaiuserslist"></a>

List users within an organization

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let filters = ListUsersFilters(
    customerIds: [
    "customerIds_example"
    ],
    carbonUserIds: [
    123
    ]
)
let orderBy = ListUsersOrderByTypes(
    
)
let orderDir = OrderDirV2(
    
)
let includeCount = true
let listResponse = try await carbonai.users.list(
    pagination: pagination,
    filters: filters,
    orderBy: orderBy,
    orderDir: orderDir,
    includeCount: includeCount
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### filters: [`ListUsersFilters`](./CarbonAI/Models/ListUsersFilters.swift)<a id="filters-listusersfilterscarbonaimodelslistusersfiltersswift"></a>


##### order_by: `ListUsersOrderByTypes`<a id="order_by-listusersorderbytypes"></a>


##### order_dir: `OrderDirV2`<a id="order_dir-orderdirv2"></a>


##### include_count: `Bool`<a id="include_count-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[UserListResponse](./CarbonAI/Models/UserListResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/list_users` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.users.toggleUserFeatures`<a id="carbonaiuserstoggleuserfeatures"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Toggle User Features

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let configurationKeyName = "configurationKeyName_example"
let value = "TODO"
let toggleUserFeaturesResponse = try await carbonai.users.toggleUserFeatures(
    configurationKeyName: configurationKeyName,
    value: value
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### configuration_key_name: `String`<a id="configuration_key_name-string"></a>


##### value: `AnyCodable`<a id="value-anycodable"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/modify_user_configuration` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.users.updateUsers`<a id="carbonaiusersupdateusers"></a>

Update Users

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let customerIds = [
"inner_example"
]
let autoSyncEnabledSources = AutoSyncEnabledSourcesProperty(
    
)
let maxFiles = 987
let maxFilesPerUpload = 987
let updateUsersResponse = try await carbonai.users.updateUsers(
    customerIds: customerIds,
    autoSyncEnabledSources: autoSyncEnabledSources,
    maxFiles: maxFiles,
    maxFilesPerUpload: maxFilesPerUpload
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### customer_ids: `[String]`<a id="customer_ids-string"></a>

List of organization supplied user IDs


##### auto_sync_enabled_sources: [`AutoSyncEnabledSourcesProperty`](./CarbonAI/Models/AutoSyncEnabledSourcesProperty.swift)<a id="auto_sync_enabled_sources-autosyncenabledsourcespropertycarbonaimodelsautosyncenabledsourcespropertyswift"></a>


##### max_files: `Int`<a id="max_files-int"></a>

Custom file upload limit for the user over *all* user's files across all uploads.          If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1,         then the user will have no limit.


##### max_files_per_upload: `Int`<a id="max_files_per_upload-int"></a>

Custom file upload limit for the user across a single upload.         If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set,         or if set to -1, then the user will have no limit.


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/update_users` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.fetchUrls`<a id="carbonaiutilitiesfetchurls"></a>
![Deprecated](https://img.shields.io/badge/deprecated-yellow)

Extracts all URLs from a webpage. 

Args:
    url (str): URL of the webpage

Returns:
    FetchURLsResponse: A response object with a list of URLs extracted from the webpage and the webpage content.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let fetchUrlsResponse = try await carbonai.utilities.fetchUrls(
    url: url
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[FetchURLsResponse](./CarbonAI/Models/FetchURLsResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_urls` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.fetchWebpage`<a id="carbonaiutilitiesfetchwebpage"></a>

Fetch Urls V2

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let fetchWebpageResponse = try await carbonai.utilities.fetchWebpage(
    url: url
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_webpage` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.fetchYoutubeTranscripts`<a id="carbonaiutilitiesfetchyoutubetranscripts"></a>

Fetches english transcripts from YouTube videos.

Args:
    id (str): The ID of the YouTube video. 
    raw (bool): Whether to return the raw transcript or not. Defaults to False.

Returns:
    dict: A dictionary with the transcript of the YouTube video.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let id = "id_example"
let raw = false
let fetchYoutubeTranscriptsResponse = try await carbonai.utilities.fetchYoutubeTranscripts(
    id: id,
    raw: raw
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### id: `String`<a id="id-string"></a>


##### raw: `Bool`<a id="raw-bool"></a>


#### 🔄 Return<a id="🔄-return"></a>

[YoutubeTranscriptResponse](./CarbonAI/Models/YoutubeTranscriptResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/fetch_youtube_transcript` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.processSitemap`<a id="carbonaiutilitiesprocesssitemap"></a>

Retrieves all URLs from a sitemap, which can subsequently be utilized with our `web_scrape` endpoint.

<!--Args:
    url (str): URL of the sitemap

Returns:
    dict: A dictionary with a list of URLs extracted from the sitemap.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let processSitemapResponse = try await carbonai.utilities.processSitemap(
    url: url
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/process_sitemap` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.scrapeSitemap`<a id="carbonaiutilitiesscrapesitemap"></a>

Extracts all URLs from a sitemap and performs a web scrape on each of them.

Args:
    sitemap_url (str): URL of the sitemap

Returns:
    dict: A response object with the status of the scraping job message.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let tags = "TODO"
let maxPagesToScrape = 987
let chunkSize = 987
let chunkOverlap = 987
let skipEmbeddingGeneration = true
let enableAutoSync = true
let generateSparseVectors = true
let prependFilenameToChunks = true
let htmlTagsToSkip = [
"inner_example"
]
let cssClassesToSkip = [
"inner_example"
]
let cssSelectorsToSkip = [
"inner_example"
]
let embeddingModel = EmbeddingGenerators(
    
)
let urlPathsToInclude = [
"inner_example"
]
let urlPathsToExclude = [
"inner_example"
]
let urlsToScrape = [
"inner_example"
]
let scrapeSitemapResponse = try await carbonai.utilities.scrapeSitemap(
    url: url,
    tags: tags,
    maxPagesToScrape: maxPagesToScrape,
    chunkSize: chunkSize,
    chunkOverlap: chunkOverlap,
    skipEmbeddingGeneration: skipEmbeddingGeneration,
    enableAutoSync: enableAutoSync,
    generateSparseVectors: generateSparseVectors,
    prependFilenameToChunks: prependFilenameToChunks,
    htmlTagsToSkip: htmlTagsToSkip,
    cssClassesToSkip: cssClassesToSkip,
    cssSelectorsToSkip: cssSelectorsToSkip,
    embeddingModel: embeddingModel,
    urlPathsToInclude: urlPathsToInclude,
    urlPathsToExclude: urlPathsToExclude,
    urlsToScrape: urlsToScrape
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


##### tags: `[String: Tags1]`<a id="tags-string-tags1"></a>


##### max_pages_to_scrape: `Int`<a id="max_pages_to_scrape-int"></a>


##### chunk_size: `Int`<a id="chunk_size-int"></a>


##### chunk_overlap: `Int`<a id="chunk_overlap-int"></a>


##### skip_embedding_generation: `Bool`<a id="skip_embedding_generation-bool"></a>


##### enable_auto_sync: `Bool`<a id="enable_auto_sync-bool"></a>


##### generate_sparse_vectors: `Bool`<a id="generate_sparse_vectors-bool"></a>


##### prepend_filename_to_chunks: `Bool`<a id="prepend_filename_to_chunks-bool"></a>


##### html_tags_to_skip: `[String]`<a id="html_tags_to_skip-string"></a>


##### css_classes_to_skip: `[String]`<a id="css_classes_to_skip-string"></a>


##### css_selectors_to_skip: `[String]`<a id="css_selectors_to_skip-string"></a>


##### embedding_model: `EmbeddingGenerators`<a id="embedding_model-embeddinggenerators"></a>


##### url_paths_to_include: `[String]`<a id="url_paths_to_include-string"></a>

URL subpaths or directories that you want to include. For example if you want to only include         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input


##### url_paths_to_exclude: `[String]`<a id="url_paths_to_exclude-string"></a>

URL subpaths or directories that you want to exclude. For example if you want to exclude         URLs that start with /questions in stackoverflow.com, you will add /questions/ in this input


##### urls_to_scrape: `[String]`<a id="urls_to_scrape-string"></a>

You can submit a subset of URLs from the sitemap that should be scraped. To get the list of URLs,           you can check out /process_sitemap endpoint. If left empty, all URLs from the sitemap will be scraped.


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/scrape_sitemap` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.scrapeWeb`<a id="carbonaiutilitiesscrapeweb"></a>

Conduct a web scrape on a given webpage URL. Our web scraper is fully compatible with JavaScript and supports recursion depth, enabling you to efficiently extract all content from the target website.

<!--Args:
    scraping_requests (List[WebscrapeRequest]): A list of WebscrapeRequest objects.

    
Returns:
    dict: A response object with the status of the scraping job message.-->

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let scrapeWebResponse = try await carbonai.utilities.scrapeWeb(
)
```

#### ⚙️ Request Body<a id="⚙️-request-body"></a>

`[WebscrapeRequest]`


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/web_scrape` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.searchUrls`<a id="carbonaiutilitiessearchurls"></a>

Perform a web search and obtain a list of relevant URLs.

As an illustration, when you perform a search for “content related to MRNA,” you will receive a list of links such as the following:

    - https://tomrenz.substack.com/p/mrna-and-why-it-matters

    - https://www.statnews.com/2020/11/10/the-story-of-mrna-how-a-once-dismissed-idea-became-a-leading-technology-in-the-covid-vaccine-race/

    - https://www.statnews.com/2022/11/16/covid-19-vaccines-were-a-success-but-mrna-still-has-a-delivery-problem/
    
    - https://joomi.substack.com/p/were-still-being-misled-about-how

Subsequently, you can submit these links to the web_scrape endpoint in order to retrieve the content of the respective web pages.

Args:
    query (str): Query to search for

Returns:
    FetchURLsResponse: A response object with a list of URLs for a given search query.

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let query = "query_example"
let searchUrlsResponse = try await carbonai.utilities.searchUrls(
    query: query
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### query: `String`<a id="query-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[FetchURLsResponse](./CarbonAI/Models/FetchURLsResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/search_urls` `GET`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.utilities.userWebpages`<a id="carbonaiutilitiesuserwebpages"></a>

User Web Pages

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let filters = UserWebPagesFilters(
    ids: [
    123
    ]
)
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = UserWebPageOrderByTypes(
    
)
let orderDir = OrderDirV2(
    
)
let userWebpagesResponse = try await carbonai.utilities.userWebpages(
    filters: filters,
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### filters: [`UserWebPagesFilters`](./CarbonAI/Models/UserWebPagesFilters.swift)<a id="filters-userwebpagesfilterscarbonaimodelsuserwebpagesfiltersswift"></a>


##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `UserWebPageOrderByTypes`<a id="order_by-userwebpageorderbytypes"></a>


##### order_dir: `OrderDirV2`<a id="order_dir-orderdirv2"></a>


#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/user_webpages` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.webhooks.addUrl`<a id="carbonaiwebhooksaddurl"></a>

Add Webhook Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let url = "url_example"
let addUrlResponse = try await carbonai.webhooks.addUrl(
    url: url
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### url: `String`<a id="url-string"></a>


#### 🔄 Return<a id="🔄-return"></a>

[Webhook](./CarbonAI/Models/Webhook.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/add_webhook` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.webhooks.deleteUrl`<a id="carbonaiwebhooksdeleteurl"></a>

Delete Webhook Url

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let webhookId = 987
let deleteUrlResponse = try await carbonai.webhooks.deleteUrl(
    webhookId: webhookId
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### webhookId: `Int`<a id="webhookid-int"></a>


#### 🔄 Return<a id="🔄-return"></a>

[GenericSuccessResponse](./CarbonAI/Models/GenericSuccessResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/delete_webhook/{webhook_id}` `DELETE`

[🔙 **Back to Table of Contents**](#table-of-contents)

---


### `carbonai.webhooks.urls`<a id="carbonaiwebhooksurls"></a>

Webhook Urls

#### 🛠️ Usage<a id="🛠️-usage"></a>

```swift
let pagination = Pagination(
    limit: 123,
    offset: 123
)
let orderBy = WebhookOrderByColumns(
    
)
let orderDir = OrderDir(
    
)
let filters = WebhookFilters(
    ids: [
    123
    ]
)
let urlsResponse = try await carbonai.webhooks.urls(
    pagination: pagination,
    orderBy: orderBy,
    orderDir: orderDir,
    filters: filters
)
```

#### ⚙️ Parameters<a id="⚙️-parameters"></a>

##### pagination: [`Pagination`](./CarbonAI/Models/Pagination.swift)<a id="pagination-paginationcarbonaimodelspaginationswift"></a>


##### order_by: `WebhookOrderByColumns`<a id="order_by-webhookorderbycolumns"></a>


##### order_dir: `OrderDir`<a id="order_dir-orderdir"></a>


##### filters: [`WebhookFilters`](./CarbonAI/Models/WebhookFilters.swift)<a id="filters-webhookfilterscarbonaimodelswebhookfiltersswift"></a>


#### 🔄 Return<a id="🔄-return"></a>

[WebhookQueryResponse](./CarbonAI/Models/WebhookQueryResponse.swift)

#### 🌐 Endpoint<a id="🌐-endpoint"></a>

`/webhooks` `POST`

[🔙 **Back to Table of Contents**](#table-of-contents)

---



## Author<a id="author"></a>
This TypeScript package is automatically generated by [Konfig](https://konfigthis.com)
