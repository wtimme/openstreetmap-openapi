//
// MapDataResponseElementsOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum MapDataResponseElementsOneOf: Codable {
    case typeNode(Node)
    case typeRelation(Relation)
    case typeWay(Way)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeNode(let value):
            try container.encode(value)
        case .typeRelation(let value):
            try container.encode(value)
        case .typeWay(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Node.self) {
            self = .typeNode(value)
        } else if let value = try? container.decode(Relation.self) {
            self = .typeRelation(value)
        } else if let value = try? container.decode(Way.self) {
            self = .typeWay(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of MapDataResponseElementsOneOf"))
        }
    }
}

