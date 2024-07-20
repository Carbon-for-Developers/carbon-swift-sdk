//
// OrganizationsAPI.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OrganizationsAPI {

    weak var client: CarbonAIClient?

    public init(client: CarbonAIClient) {
        self.client = client
    }

    /**
     Get Organization
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGetSync(apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: OrganizationResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Organization
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func callGetAsyncMappedParams() async throws -> OrganizationResponse {
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     Get Organization
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(
    ) async throws -> OrganizationResponse {
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }


    /**
     Get Organization
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func callGet(
    ) async throws -> OrganizationResponse {
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }



    /**
     Get Organization
     - GET /organization
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - returns: RequestBuilder<OrganizationResponse> 
     */
    open class func callGetWithRequestBuilder(
    ) -> RequestBuilder<OrganizationResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/organization"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<OrganizationResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /organization")
    }

    /**
     Get Organization
     - GET /organization
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - returns: RequestBuilder<OrganizationResponse> 
     */
    open func callGetWithRequestBuilder(
    ) -> RequestBuilder<OrganizationResponse> {
        let basePath = self.client!.basePath;
        let localVariablePath = "/organization"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client!.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<OrganizationResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "GET", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to GET /organization")
    }


    /**
     Update Organization
     
     - parameter updateOrganizationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateSync(updateOrganizationInput: UpdateOrganizationInput, apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: GenericSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return updateWithRequestBuilder(updateOrganizationInput: updateOrganizationInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Organization
     
     - parameter updateOrganizationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func updateAsyncMappedParams(updateOrganizationInput: UpdateOrganizationInput) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            updateWithRequestBuilder(updateOrganizationInput: updateOrganizationInput).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     Update Organization
     
     - parameter updateOrganizationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func update(
        globalUserConfig: UserConfigurationNullable? = nil, 
        dataSourceConfigs: [String: DataSourceConfiguration]? = nil
    ) async throws -> GenericSuccessResponse {
        let updateOrganizationInput = UpdateOrganizationInput(
            globalUserConfig: globalUserConfig,
            dataSourceConfigs: dataSourceConfigs
        )
        return try await withCheckedThrowingContinuation { continuation in
            updateWithRequestBuilder(updateOrganizationInput: updateOrganizationInput).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }


    /**
     Update Organization
     
     - parameter updateOrganizationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func update(
        globalUserConfig: UserConfigurationNullable? = nil, 
        dataSourceConfigs: [String: DataSourceConfiguration]? = nil
    ) async throws -> GenericSuccessResponse {
        let updateOrganizationInput = UpdateOrganizationInput(
            globalUserConfig: globalUserConfig,
            dataSourceConfigs: dataSourceConfigs
        )
        return try await withCheckedThrowingContinuation { continuation in
            updateWithRequestBuilder(updateOrganizationInput: updateOrganizationInput).execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }



    /**
     Update Organization
     - POST /organization/update
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter updateOrganizationInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open class func updateWithRequestBuilder(
            updateOrganizationInput: UpdateOrganizationInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/organization/update"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateOrganizationInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /organization/update")
    }

    /**
     Update Organization
     - POST /organization/update
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter updateOrganizationInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open func updateWithRequestBuilder(
            updateOrganizationInput: UpdateOrganizationInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = self.client!.basePath;
        let localVariablePath = "/organization/update"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateOrganizationInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client!.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /organization/update")
    }


    /**
     Update Organization Statistics
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateStatsSync(apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: GenericSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return updateStatsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Organization Statistics
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func updateStatsAsyncMappedParams() async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            updateStatsWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    /**
     Update Organization Statistics
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func updateStats(
    ) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            updateStatsWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }


    /**
     Update Organization Statistics
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func updateStats(
    ) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            updateStatsWithRequestBuilder().execute { result in
                switch result {
                case let .success(response):
                    continuation.resume(returning: response.body)
                case let .failure(error):
                    continuation.resume(throwing: error)
                }
            }
        }
    }



    /**
     Update Organization Statistics
     - POST /organization/statistics
     - Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open class func updateStatsWithRequestBuilder(
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/organization/statistics"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /organization/statistics")
    }

    /**
     Update Organization Statistics
     - POST /organization/statistics
     - Use this endpoint to reaggregate the statistics for an organization, for example aggregate_file_size. The reaggregation process is asyncronous so a webhook will be sent with the event type being FILE_STATISTICS_AGGREGATED to notify when the process is complee. After this aggregation is complete, the updated statistics can be retrieved using the /organization endpoint. The response of /organization willalso contain a timestamp of the last time the statistics were reaggregated.
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open func updateStatsWithRequestBuilder(
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = self.client!.basePath;
        let localVariablePath = "/organization/statistics"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client!.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /organization/statistics")
    }

}
