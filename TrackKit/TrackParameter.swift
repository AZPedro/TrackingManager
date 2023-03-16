//
//  TrackParameter.swift
//  TrackKit
//
//  Created by Pedro Azevedo on 11/03/21.
//

public protocol TrackEventParameterProtocol: Encodable {
    var name: String { get }
}

public extension TrackEventParameterProtocol {
    func value() -> [String: Any]? {
        do {
            let data = try JSONEncoder().encode(self)
            return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        } catch {
            return nil
        }
    }
}
