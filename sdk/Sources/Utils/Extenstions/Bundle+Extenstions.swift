//
//  Bundle+Extenstions.swift
//  sdk
//
//  Created by Sergey Iskhakov on 16.09.2020.
//  Copyright © 2020 Cloudpayments. All rights reserved.
//

import Foundation
import UIKit

extension Bundle {
    
    public class var mainSdk: Bundle? {
        let bundle = Bundle(for: PaymentForm.self)
        guard let bundleUrl = bundle.url(forResource: "CloudpaymentsSDK", withExtension: "bundle") else {
            print("Error: CloudpaymentsSDK bundle not found")
            return nil
        }
        return Bundle(url: bundleUrl)
    }
    
    public class var cocoapods: Bundle? { 
        return Bundle(identifier: "org.cocoapods.Cloudpayments")
    }
}


