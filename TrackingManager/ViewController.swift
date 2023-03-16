//
//  ViewController.swift
//  TrackingManager
//
//  Created by Pedro Azevedo on 11/03/21.
//

import UIKit
import TrackKit

class ViewController: UIViewController {

    let manager = TrackingManager()
    let paymentSuccessTrack = PaymentSuccessTrack(name: "payment_success")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let event = TrackEvent(parameter: paymentSuccessTrack)
        manager.perform(event: event)
    }
}

struct PaymentSuccessTrack: TrackEventParameterProtocol {
    var name: String
}
