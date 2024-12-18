//
// Lead.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Lead: Codable, JSONEncodable, Hashable {

    public var title: String?
    public var description: String?
    public var id: String
    public var owner: PartialOwner
    public var source: String?
    public var status: String?
    public var company: String?
    public var firstName: String?
    public var lastName: String?
    public var addresses: [Address]
    public var phoneNumbers: [PhoneNumber]
    public var emails: [Email]
    public var convertedAt: String?
    public var convertedAccount: PartialAccountNullable?
    public var convertedContact: PartialContactNullable?
    public var lastActivityAt: String?
    public var createdAt: String
    public var updatedAt: String
    public var isDeleted: Bool
    public var tasks: [Task]?
    public var events: [Event]?
    public var remoteData: AnyCodable?

    public init(title: String?, description: String?, id: String, owner: PartialOwner, source: String?, status: String?, company: String?, firstName: String?, lastName: String?, addresses: [Address], phoneNumbers: [PhoneNumber], emails: [Email], convertedAt: String?, convertedAccount: PartialAccountNullable?, convertedContact: PartialContactNullable?, lastActivityAt: String?, createdAt: String, updatedAt: String, isDeleted: Bool, tasks: [Task]? = nil, events: [Event]? = nil, remoteData: AnyCodable?) {
        self.title = title
        self.description = description
        self.id = id
        self.owner = owner
        self.source = source
        self.status = status
        self.company = company
        self.firstName = firstName
        self.lastName = lastName
        self.addresses = addresses
        self.phoneNumbers = phoneNumbers
        self.emails = emails
        self.convertedAt = convertedAt
        self.convertedAccount = convertedAccount
        self.convertedContact = convertedContact
        self.lastActivityAt = lastActivityAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.isDeleted = isDeleted
        self.tasks = tasks
        self.events = events
        self.remoteData = remoteData
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
        case id
        case owner
        case source
        case status
        case company
        case firstName = "first_name"
        case lastName = "last_name"
        case addresses
        case phoneNumbers = "phone_numbers"
        case emails
        case convertedAt = "converted_at"
        case convertedAccount = "converted_account"
        case convertedContact = "converted_contact"
        case lastActivityAt = "last_activity_at"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case isDeleted = "is_deleted"
        case tasks
        case events
        case remoteData = "remote_data"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var codingContainer = encoder.container(keyedBy: CodingKeys.self)
        try codingContainer.encode(title, forKey: .title)
        try codingContainer.encode(description, forKey: .description)
        try codingContainer.encode(id, forKey: .id)
        try codingContainer.encode(owner, forKey: .owner)
        try codingContainer.encode(source, forKey: .source)
        try codingContainer.encode(status, forKey: .status)
        try codingContainer.encode(company, forKey: .company)
        try codingContainer.encode(firstName, forKey: .firstName)
        try codingContainer.encode(lastName, forKey: .lastName)
        try codingContainer.encode(addresses, forKey: .addresses)
        try codingContainer.encode(phoneNumbers, forKey: .phoneNumbers)
        try codingContainer.encode(emails, forKey: .emails)
        try codingContainer.encode(convertedAt, forKey: .convertedAt)
        try codingContainer.encode(convertedAccount, forKey: .convertedAccount)
        try codingContainer.encode(convertedContact, forKey: .convertedContact)
        try codingContainer.encode(lastActivityAt, forKey: .lastActivityAt)
        try codingContainer.encode(createdAt, forKey: .createdAt)
        try codingContainer.encode(updatedAt, forKey: .updatedAt)
        try codingContainer.encode(isDeleted, forKey: .isDeleted)
        try codingContainer.encodeIfPresent(tasks, forKey: .tasks)
        try codingContainer.encodeIfPresent(events, forKey: .events)
        try codingContainer.encode(remoteData, forKey: .remoteData)
    }
}

