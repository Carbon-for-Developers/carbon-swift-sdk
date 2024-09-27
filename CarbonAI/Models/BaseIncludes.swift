//
// BaseIncludes.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** These can be included as children when requesting parent entities  */
public enum BaseIncludes: String, Codable, CaseIterable {
    case tasks = "Tasks"
    case events = "Events"
}
