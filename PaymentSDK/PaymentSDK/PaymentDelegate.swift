//
//  PaymentDelegate.swift
//  PaymentSDK
//
//  Created by Niraj Chauhan on 2/27/19.
//  Copyright © 2019 Network International. All rights reserved.
//

import Foundation
import PassKit

public protocol PaymentDelegate : AnyObject
{
    
    func beginAuthorization(didSelect paymentMethod : PaymentSDK.PaymentMethod, handler completion: @escaping (PaymentAuthorizationLink?) -> Void)
    
    func authorizationStarted()
    
    func authorizationCompleted(withStatus status: AuthorizationStatus)
        
    func paymentStarted()
    
    func paymentCompleted(with status: PaymentStatus)
    
}

public enum AuthorizationStatus{
    case success
    case failed
}

public enum PaymentStatus{
    case success
    case failed
}
