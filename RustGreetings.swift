//
//  RustGreetings.swift
//  TestApp
//
//  Created by Emanuele Mele on 11/04/22.
//

import Foundation

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)

        let swift_result = String(cString: result!)

        rust_greeting_free(UnsafeMutablePointer<Int8>(mutating: result))

        return swift_result
        
    }
}
