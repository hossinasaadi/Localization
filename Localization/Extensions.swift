//
//  Extensions.swift
//  Localization
//
//  Created by HossinAsaadi on 2/4/24.
//

import SwiftUI

// 1.Localize custom strings
extension String {
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}

// 2.Localize all Text Views at initialize
extension Text{
    init<S>(_ content: S) where S : StringProtocol {
        let typo = NSLocalizedString(content as! String, comment: "")
        self.init(verbatim: typo)
    }
}

// 3.Localize all Strings at initialize (Not Recommended)
//extension String{
//    init<S>(_ content: S) where S : StringProtocol {
//        let typo = NSLocalizedString(content as! String, comment: "")
//        self.init(cString: (typo as NSString).utf8String!)
//    }
//}
