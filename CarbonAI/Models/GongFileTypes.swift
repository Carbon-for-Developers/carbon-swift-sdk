//
// GongFileTypes.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum GongFileTypes: String, Codable, CaseIterable {
    case workspace = "WORKSPACE"
    case folder = "FOLDER"
    case call = "CALL"
}