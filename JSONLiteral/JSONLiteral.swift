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

@objc protocol JSON {
    var integerValue: Int { get }
    var floatValue: Float { get }
    var doubleValue: Double { get }
}

extension NSArray: JSON {
    var integerValue: Int { return 0 }
    var floatValue: Float { return 0 }
    var doubleValue: Double { return 0 }
}

extension NSDictionary: JSON {
    var integerValue: Int { return 0 }
    var floatValue: Float { return 0 }
    var doubleValue: Double { return 0 }
}

extension NSNumber: JSON { /* HELLO */ }
extension NSString: JSON { /* WORLD */ }


extension Optional {

    private var dictionary: NSDictionary? { return self as? NSDictionary }
    private var array: NSArray? { return self as? NSArray }
    private var number: NSNumber? { return self as? NSNumber }

    subscript(key: String) -> JSON? { return self.dictionary?[key] as? JSON }
    subscript(index: Int) -> JSON? {
        if index < 0 {
            return nil
        }
        if let array = self.array {
            if index >= array.count {
                return nil
            }
            return array[index] as? JSON
        }
        return nil
    }

    var stringValue: String? { return self as? String }
    var integerValue: Int { return self.number?.integerValue ?? 0 }
    var floatValue: Float { return self.number?.floatValue ?? 0 }
    var doubleValue: Double { return self.number?.doubleValue ?? 0 }

}
