//
// SwiftGenKit
// Copyright (c) 2017 SwiftGen
// MIT Licence
//

import Foundation

/* MARK: - Stencil Context for Models
 */
extension JSONFileParser {
    public func stencilContext() -> [String: Any] {
        return ["spec": json]
    }
}
