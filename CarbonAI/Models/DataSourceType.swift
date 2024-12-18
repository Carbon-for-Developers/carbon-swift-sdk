//
// DataSourceType.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum DataSourceType: String, Codable, CaseIterable {
    case googleCloudStorage = "GOOGLE_CLOUD_STORAGE"
    case googleDrive = "GOOGLE_DRIVE"
    case notion = "NOTION"
    case notionDatabase = "NOTION_DATABASE"
    case intercom = "INTERCOM"
    case dropbox = "DROPBOX"
    case onedrive = "ONEDRIVE"
    case sharepoint = "SHAREPOINT"
    case confluence = "CONFLUENCE"
    case box = "BOX"
    case zendesk = "ZENDESK"
    case zotero = "ZOTERO"
    case s3 = "S3"
    case azureBlobStorage = "AZURE_BLOB_STORAGE"
    case gmail = "GMAIL"
    case outlook = "OUTLOOK"
    case servicenow = "SERVICENOW"
    case text = "TEXT"
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
    case rawText = "RAW_TEXT"
    case webScrape = "WEB_SCRAPE"
    case rssFeed = "RSS_FEED"
    case freshdesk = "FRESHDESK"
    case gitbook = "GITBOOK"
    case salesforce = "SALESFORCE"
    case github = "GITHUB"
    case slack = "SLACK"
    case guru = "GURU"
    case gong = "GONG"
    case document360 = "DOCUMENT360"
    case jpg = "JPG"
    case png = "PNG"
    case jpeg = "JPEG"
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
