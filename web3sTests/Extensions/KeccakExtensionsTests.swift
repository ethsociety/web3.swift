//
//  KeccakExtensionsTests.swift
//  web3sTests
//
//  Created by Matt Marshall on 13/03/2018.
//  Copyright © 2018 Argent Labs Limited. All rights reserved.
//

import XCTest
@testable import web3swift

class KeccakExtensionsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testKeccak256Hash() {
        let string = "hello world"
        let hash = string.keccak256
        let hexStringHash = hash.hexString
        XCTAssertEqual(hexStringHash, "0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad")
    }
    
    
    func testDataKeccak256HashHex() {
        let string = "0x68656c6c6f20776f726c64"
        let data = Data(hex: string)!
        let keccak = data.keccak256
        XCTAssertEqual(keccak.hexString, "0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad")
    }
    
    func testDataKeccak256HashStr() {
        let string = "hello world"
        let data = string.data(using: .utf8)!
        let keccak = data.keccak256
        XCTAssertEqual(keccak.hexString, "0x47173285a8d7341e5e972fc677286384f802f8ef42a5ec5f03bbfa254cb01fad")
    }
    
}
