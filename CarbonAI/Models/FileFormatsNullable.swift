//
// FileFormatsNullable.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum FileFormatsNullable: String, Codable, CaseIterable {
    case txt = "TXT"
    case csv = "CSV"
    case tsv = "TSV"
    case pdf = "PDF"
    case docx = "DOCX"
    case pptx = "PPTX"
    case xlsx = "XLSX"
    case xlsm = "XLSM"
    case md = "MD"
    case rtf = "RTF"
    case json = "JSON"
    case html = "HTML"
    case notion = "NOTION"
    case googleDocs = "GOOGLE_DOCS"
    case googleSheets = "GOOGLE_SHEETS"
    case googleSlides = "GOOGLE_SLIDES"
    case intercom = "INTERCOM"
    case confluence = "CONFLUENCE"
    case rssFeed = "RSS_FEED"
    case gmail = "GMAIL"
    case outlook = "OUTLOOK"
    case zendesk = "ZENDESK"
    case freshdesk = "FRESHDESK"
    case webScrape = "WEB_SCRAPE"
    case gitbook = "GITBOOK"
    case salesforce = "SALESFORCE"
    case github = "GITHUB"
    case slack = "SLACK"
    case guru = "GURU"
    case servicenow = "SERVICENOW"
    case gong = "GONG"
    case jpg = "JPG"
    case png = "PNG"
    case mp3 = "MP3"
    case mp2 = "MP2"
    case aac = "AAC"
    case wav = "WAV"
    case flac = "FLAC"
    case pcm = "PCM"
    case m4A = "M4A"
    case ogg = "OGG"
    case opus = "OPUS"
    case mpeg = "MPEG"
    case mpg = "MPG"
    case mp4 = "MP4"
    case wmv = "WMV"
    case avi = "AVI"
    case mov = "MOV"
    case mkv = "MKV"
    case flv = "FLV"
    case webm = "WEBM"
    case eml = "EML"
    case msg = "MSG"
}
