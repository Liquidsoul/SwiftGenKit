//
//  JSONModelTests.swift
//  SwiftGenKit
//
//  Created by Liquidsoul on 06/05/2017.
//  Copyright © 2017 SwiftGen. All rights reserved.
//

import XCTest
@testable import SwiftGenKit

class ModelsTests: XCTestCase {
  func testFullModel() {
    let parser = JSONFileParser()
    try? parser.parseFile(path: Fixtures.path(for: "Model.json", sub: .models))

    let result = parser.stencilContext()
    let expected = Fixtures.context(for: "fullModel.plist", sub: .models)

    XCTDiffContexts(result, expected)
  }
}
