/*
* Copyright 2021 Pedro Azevedo
*/

public protocol TrackManagerProtocol {
    func perform<T>(event: TrackEvent<T>)
}

public class TrackingManager: TrackManagerProtocol {
    public init() {}
    
    public func perform<T>(event: TrackEvent<T>) {
        print(event.parameter?.value())
    }
}
