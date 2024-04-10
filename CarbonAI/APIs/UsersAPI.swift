//
// UsersAPI.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UsersAPI {

    let client: CarbonAIClient

    public init(client: CarbonAIClient) {
        self.client = client
    }

    /**
     User Endpoint
     
     - parameter userRequestContent: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func callGetSync(userRequestContent: UserRequestContent, apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: UserResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return callGetWithRequestBuilder(userRequestContent: userRequestContent).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     User Endpoint
     
     - parameter userRequestContent: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func callGetAsyncMappedParams(userRequestContent: UserRequestContent) async throws -> UserResponse {
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder(userRequestContent: userRequestContent).execute { result in
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
     User Endpoint
     
     - parameter userRequestContent: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func callGet(
        customerId: String
    ) async throws -> UserResponse {
        let userRequestContent = UserRequestContent(
            customerId: customerId
        )
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder(userRequestContent: userRequestContent).execute { result in
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
     User Endpoint
     
     - parameter userRequestContent: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func callGet(
        customerId: String
    ) async throws -> UserResponse {
        let userRequestContent = UserRequestContent(
            customerId: customerId
        )
        return try await withCheckedThrowingContinuation { continuation in
            callGetWithRequestBuilder(userRequestContent: userRequestContent).execute { result in
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
     User Endpoint
     - POST /user
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter userRequestContent: (body)  
     - returns: RequestBuilder<UserResponse> 
     */
    open class func callGetWithRequestBuilder(
            userRequestContent: UserRequestContent
    ) -> RequestBuilder<UserResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/user"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRequestContent)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<UserResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /user")
    }

    /**
     User Endpoint
     - POST /user
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter userRequestContent: (body)  
     - returns: RequestBuilder<UserResponse> 
     */
    open func callGetWithRequestBuilder(
            userRequestContent: UserRequestContent
    ) -> RequestBuilder<UserResponse> {
        let basePath = self.client.basePath;
        let localVariablePath = "/user"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: userRequestContent)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<UserResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /user")
    }


    /**
     Delete Users
     
     - parameter deleteUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteSync(deleteUsersInput: DeleteUsersInput, apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: GenericSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteWithRequestBuilder(deleteUsersInput: deleteUsersInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Users
     
     - parameter deleteUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func deleteAsyncMappedParams(deleteUsersInput: DeleteUsersInput) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            deleteWithRequestBuilder(deleteUsersInput: deleteUsersInput).execute { result in
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
     Delete Users
     
     - parameter deleteUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func delete(
        customerIds: [String]
    ) async throws -> GenericSuccessResponse {
        let deleteUsersInput = DeleteUsersInput(
            customerIds: customerIds
        )
        return try await withCheckedThrowingContinuation { continuation in
            deleteWithRequestBuilder(deleteUsersInput: deleteUsersInput).execute { result in
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
     Delete Users
     
     - parameter deleteUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func delete(
        customerIds: [String]
    ) async throws -> GenericSuccessResponse {
        let deleteUsersInput = DeleteUsersInput(
            customerIds: customerIds
        )
        return try await withCheckedThrowingContinuation { continuation in
            deleteWithRequestBuilder(deleteUsersInput: deleteUsersInput).execute { result in
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
     Delete Users
     - POST /delete_users
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter deleteUsersInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open class func deleteWithRequestBuilder(
            deleteUsersInput: DeleteUsersInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/delete_users"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteUsersInput)

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
        fatalError("Error: Unable to send request to POST /delete_users")
    }

    /**
     Delete Users
     - POST /delete_users
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter deleteUsersInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open func deleteWithRequestBuilder(
            deleteUsersInput: DeleteUsersInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = self.client.basePath;
        let localVariablePath = "/delete_users"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deleteUsersInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /delete_users")
    }


    /**
     Toggle User Features
     
     - parameter modifyUserConfigurationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @discardableResult
    open class func toggleUserFeaturesSync(modifyUserConfigurationInput: ModifyUserConfigurationInput, apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: GenericSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return toggleUserFeaturesWithRequestBuilder(modifyUserConfigurationInput: modifyUserConfigurationInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Toggle User Features
     
     - parameter modifyUserConfigurationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func toggleUserFeaturesAsyncMappedParams(modifyUserConfigurationInput: ModifyUserConfigurationInput) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            toggleUserFeaturesWithRequestBuilder(modifyUserConfigurationInput: modifyUserConfigurationInput).execute { result in
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
     Toggle User Features
     
     - parameter modifyUserConfigurationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func toggleUserFeatures(
        configurationKeyName: String,
        value: AnyCodable
    ) async throws -> GenericSuccessResponse {
        let modifyUserConfigurationInput = ModifyUserConfigurationInput(
            configurationKeyName: configurationKeyName,
            value: value
        )
        return try await withCheckedThrowingContinuation { continuation in
            toggleUserFeaturesWithRequestBuilder(modifyUserConfigurationInput: modifyUserConfigurationInput).execute { result in
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
     Toggle User Features
     
     - parameter modifyUserConfigurationInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func toggleUserFeatures(
        configurationKeyName: String,
        value: AnyCodable
    ) async throws -> GenericSuccessResponse {
        let modifyUserConfigurationInput = ModifyUserConfigurationInput(
            configurationKeyName: configurationKeyName,
            value: value
        )
        return try await withCheckedThrowingContinuation { continuation in
            toggleUserFeaturesWithRequestBuilder(modifyUserConfigurationInput: modifyUserConfigurationInput).execute { result in
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
     Toggle User Features
     - POST /modify_user_configuration
     - API Key:
       - type: apiKey authorization 
       - name: accessToken
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - API Key:
       - type: apiKey customer-id 
       - name: customerId
     - parameter modifyUserConfigurationInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open class func toggleUserFeaturesWithRequestBuilder(
            modifyUserConfigurationInput: ModifyUserConfigurationInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/modify_user_configuration"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: modifyUserConfigurationInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.accessToken, prefix: "Token ")
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: CarbonAIAPI.apiKey, prefix: "Bearer ")
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "customer-id", value: CarbonAIAPI.customerId, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /modify_user_configuration")
    }

    /**
     Toggle User Features
     - POST /modify_user_configuration
     - API Key:
       - type: apiKey authorization 
       - name: accessToken
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - API Key:
       - type: apiKey customer-id 
       - name: customerId
     - parameter modifyUserConfigurationInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    @available(*, deprecated, message: "This operation is deprecated.")
    open func toggleUserFeaturesWithRequestBuilder(
            modifyUserConfigurationInput: ModifyUserConfigurationInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = self.client.basePath;
        let localVariablePath = "/modify_user_configuration"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: modifyUserConfigurationInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client.accessToken, prefix: "Token ")
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client.apiKey, prefix: "Bearer ")
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "customer-id", value: self.client.customerId, prefix: nil)
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /modify_user_configuration")
    }


    /**
     Update Users
     
     - parameter updateUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateUsersSync(updateUsersInput: UpdateUsersInput, apiResponseQueue: DispatchQueue = CarbonAIAPI.apiResponseQueue, completion: @escaping ((_ data: GenericSuccessResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return updateUsersWithRequestBuilder(updateUsersInput: updateUsersInput).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Users
     
     - parameter updateUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    private class func updateUsersAsyncMappedParams(updateUsersInput: UpdateUsersInput) async throws -> GenericSuccessResponse {
        return try await withCheckedThrowingContinuation { continuation in
            updateUsersWithRequestBuilder(updateUsersInput: updateUsersInput).execute { result in
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
     Update Users
     
     - parameter updateUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open class func updateUsers(
        customerIds: [String],
        autoSyncEnabledSources: AutoSyncEnabledSourcesProperty? = nil, 
        fileUploadLimit: Int? = nil
    ) async throws -> GenericSuccessResponse {
        let updateUsersInput = UpdateUsersInput(
            customerIds: customerIds,
            autoSyncEnabledSources: autoSyncEnabledSources,
            fileUploadLimit: fileUploadLimit
        )
        return try await withCheckedThrowingContinuation { continuation in
            updateUsersWithRequestBuilder(updateUsersInput: updateUsersInput).execute { result in
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
     Update Users
     
     - parameter updateUsersInput: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
    open func updateUsers(
        customerIds: [String],
        autoSyncEnabledSources: AutoSyncEnabledSourcesProperty? = nil, 
        fileUploadLimit: Int? = nil
    ) async throws -> GenericSuccessResponse {
        let updateUsersInput = UpdateUsersInput(
            customerIds: customerIds,
            autoSyncEnabledSources: autoSyncEnabledSources,
            fileUploadLimit: fileUploadLimit
        )
        return try await withCheckedThrowingContinuation { continuation in
            updateUsersWithRequestBuilder(updateUsersInput: updateUsersInput).execute { result in
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
     Update Users
     - POST /update_users
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter updateUsersInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open class func updateUsersWithRequestBuilder(
            updateUsersInput: UpdateUsersInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = CarbonAIAPI.basePath;
        let localVariablePath = "/update_users"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUsersInput)

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
        fatalError("Error: Unable to send request to POST /update_users")
    }

    /**
     Update Users
     - POST /update_users
     - API Key:
       - type: apiKey authorization 
       - name: apiKey
     - parameter updateUsersInput: (body)  
     - returns: RequestBuilder<GenericSuccessResponse> 
     */
    open func updateUsersWithRequestBuilder(
            updateUsersInput: UpdateUsersInput
    ) -> RequestBuilder<GenericSuccessResponse> {
        let basePath = self.client.basePath;
        let localVariablePath = "/update_users"
        let localVariableURLString = basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: updateUsersInput)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        var localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        do {
            try Authentication.setAuthenticationParameters(headers: &localVariableHeaderParameters, url: &localVariableUrlComponents, in: "header", name: "authorization", value: self.client.apiKey, prefix: "Bearer ")
            let localVariableRequestBuilder: RequestBuilder<GenericSuccessResponse>.Type = CarbonAIAPI.requestBuilderFactory.getBuilder()
            let URLString = localVariableUrlComponents?.string ?? localVariableURLString
            return localVariableRequestBuilder.init(method: "POST", URLString: URLString, parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        } catch {
            print("Error: \(error)")
        }
        fatalError("Error: Unable to send request to POST /update_users")
    }

}
