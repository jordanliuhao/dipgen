// This is a generated file, do not edit!
// Generated by dipgen, see https://github.com/ilyapuchka/dipgen

import Foundation
import UIKit
import Dip
import DipUI

extension ListViewController: StoryboardInstantiatable {}

let baseContainer = DependencyContainer { container in 
	unowned let container = container
	DependencyContainer.uiContainers.append(container)

	container.register(.Shared, factory: NSObject.init)
	container.register(.Shared, factory: ListViewController.init(nibName:bundle:))
}

let listModule = DependencyContainer { container in 
	unowned let container = container

	let listWireframe = container.register(.Unique, type: ListWireframe.self, tag: "some tag", factory: ListWireframe.init(rootWireframe:addWireframe:listPresenter:))
		.implements(NSObject.self, SomeProtocol.self)
		.resolvingProperties { container, resolved in 
			resolved.addWireframe = try container.resolve(tag: "tag") as AddWireframe
			resolved.listPresenter = try container.resolve()
			resolved.rootWireframe = try container.resolve()
		}
}


extension DependencyContainer {

	static func configureAll() {
		let _ = baseContainer
		let _ = listModule
	}

	static func bootstrapAll() throws {
		try baseContainer.bootstrap()
		try listModule.bootstrap()
	}

}