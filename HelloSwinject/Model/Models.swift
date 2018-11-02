//
//  Models.swift
//  HelloSwinject
//
//  Created by Alexander Larsson on 2018-11-02.
//

import Foundation

// MARK: Protocols

protocol HelloProvider {
    func hello() -> String
}

protocol WorldProvider {
    func world() -> String
}

protocol HelloWorldProvider {
    func helloWorld() -> String
}

// MARK: Implementations

class HelloImplementation: HelloProvider {
    func hello() -> String {
        return "Hello"
    }
}

class WorldImplementation: WorldProvider {
    func world() -> String {
        return "World"
    }
}

class HelloWorldImplementation: HelloWorldProvider {
    let helloProvider: HelloProvider
    let worldProvider: WorldProvider

    init(helloProvider: HelloProvider, worldProvider: WorldProvider) {
        self.helloProvider = helloProvider
        self.worldProvider = worldProvider
    }

    func helloWorld() -> String {
        return "\(helloProvider.hello()) \(worldProvider.world())!"
    }
}
