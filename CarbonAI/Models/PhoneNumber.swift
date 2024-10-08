//
// PhoneNumber.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PhoneNumber: Codable, JSONEncodable, Hashable {

    public var phoneNumber: String
    public var phoneNumberType: String?

    public init(phoneNumber: String, phoneNumberType: String?) {
        self.phoneNumber = phoneNumber
        self.phoneNumberType = phoneNumberType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phoneNumber = "phone_number"
        case phoneNumberType = "phone_number_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(phoneNumber, forKey: .phoneNumber)
        try codingContainer.encode(phoneNumberType, forKey: .phoneNumberType)
    }
}

