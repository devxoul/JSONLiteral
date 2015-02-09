// The MIT License (MIT)
//
// Copyright (c) 2015 Suyeol Jeon
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import XCTest

class JSONLiteralTests: XCTestCase {

    func testExample() {
        let json: AnyObject = [
            "data": [
                [
                    "id": 1,
                    "name": "Suyeol Jeon",
                    "age": NSNull(),
                    "height": 179.9
                ],
            ]
        ]

        XCTAssert(json["data"][0]["id"].integerValue == 1)
        XCTAssert(json["data"][0]["name"].stringValue == "Suyeol Jeon")
        XCTAssert(json["data"][0]["age"] == nil)
        XCTAssert(json["data"][0]["age"] == nil)
        XCTAssert(json["data"][1] == nil)
        XCTAssert(json["nonexists"][0]["age"].integerValue == 0)
    }
    
}
