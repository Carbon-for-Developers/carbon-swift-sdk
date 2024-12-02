//
// ParsedTextFormatsNullable.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The format in which the text content of the file should be parsed. Notion files are the only files         that support this feature. The default parsed text format is plain text. */
public enum ParsedTextFormatsNullable: String, Codable, CaseIterable {
    case plainText = "PLAIN_TEXT"
    case markdown = "MARKDOWN"
}