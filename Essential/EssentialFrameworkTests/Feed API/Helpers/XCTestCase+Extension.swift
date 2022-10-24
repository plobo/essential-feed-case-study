//
//  XCTestCase+Extension.swift
//  EssentialFrameworkTests
//
//  Created by Pradeep Lobo on 2022-10-23.
//

import XCTest

extension XCTestCase {
    func trackMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath,  line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated, Potential memory leak.", file: file, line: line)
        }
    }
}
