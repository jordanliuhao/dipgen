// This is a generated file, do not edit!
// Generated by dipgen, see https://github.com/ilyapuchka/dipgen

import Dip

extension DependencyContainer {

    static func configureAll() { 
        _ = baseContainer
        _ = listModuleContainer
    }

    static func bootstrapAll() throws { 
        try baseContainer.bootstrap()
        try listModuleContainer.bootstrap()
    }

}