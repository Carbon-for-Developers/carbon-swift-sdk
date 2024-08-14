//
// EmbeddingStorageStatus.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum EmbeddingStorageStatus: String, Codable, CaseIterable {
    case hotStorage = "HOT_STORAGE"
    case hotToCold = "HOT_TO_COLD"
    case coldStorage = "COLD_STORAGE"
    case coldToHot = "COLD_TO_HOT"
}
