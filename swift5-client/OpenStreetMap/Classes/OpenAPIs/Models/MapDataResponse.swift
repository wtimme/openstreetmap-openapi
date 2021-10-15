//
// MapDataResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MapDataResponse: Codable, Hashable {

    public var bounds: AnyCodable?
    public var elements: [MapDataResponseElementsOneOf]?
    public var version: String?
    public var copyright: String?
    public var attribution: String?

    public init(bounds: AnyCodable? = nil, elements: [MapDataResponseElementsOneOf]? = nil, version: String? = nil, copyright: String? = nil, attribution: String? = nil) {
        self.bounds = bounds
        self.elements = elements
        self.version = version
        self.copyright = copyright
        self.attribution = attribution
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bounds
        case elements
        case version
        case copyright
        case attribution
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bounds, forKey: .bounds)
        try container.encodeIfPresent(elements, forKey: .elements)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(copyright, forKey: .copyright)
        try container.encodeIfPresent(attribution, forKey: .attribution)
    }
}

