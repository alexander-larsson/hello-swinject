//
//  GlobalContainer.swift
//  HelloSwinject
//
//  Created by Alexander Larsson on 2018-11-02.
//

import Foundation
import Swinject
import SwinjectAutoregistration

internal let container: Container = {
    let container = Container()

    container.autoregister(HelloProvider.self, initializer: HelloImplementation.init)
    container.autoregister(WorldProvider.self, initializer: WorldImplementation.init)
    container.autoregister(HelloWorldProvider.self, initializer: HelloWorldImplementation.init)

    return container
}()
