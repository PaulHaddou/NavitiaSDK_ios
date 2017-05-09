//
// Created by Chakkra CHAK on 20/04/2017.
// Copyright (c) 2017 Chakkra CHAK. All rights reserved.
//

import Foundation

open class NavitiaConfiguration: NSObject {
    open let token:String
    open let baseUrl:String = "https://api.navitia.io/v1"

    public init(token: String) {
        self.token = token
    }
}
