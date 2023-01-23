//
//  DeviceConstant.swift
//  SwiftUIDemoMapApp
//
//  Created by Julio Collado Perez on 1/23/23.
//

import UIKit

struct DeviceConstant {
    static var isIPad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
}
