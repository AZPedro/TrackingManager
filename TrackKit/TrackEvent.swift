//
//  TrackEvent.swift
//  TrackKit
//
//  Created by Pedro Azevedo on 11/03/21.
//

protocol TrackEventProtocol {
    associatedtype ParamValue
    var parameter: ParamValue? { get set }
}

public struct TrackEvent<T: TrackEventParameterProtocol>: TrackEventProtocol {
    typealias ParamValue = T

    public var parameter: T? = nil
    
    public init(parameter: T? = nil) {
        self.parameter = parameter
    }
}
