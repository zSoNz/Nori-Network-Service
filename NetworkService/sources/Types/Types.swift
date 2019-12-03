//
//  Types.swift
//  Network Service
//
//  Created by IDAP Developer on 12/3/19.
//  Copyright © 2019 Bendis. All rights reserved.
//

import Foundation

public typealias ModelHandler<Type> = (Type) -> ()

public typealias NetworkOperationComposingResult<DataType, ModelType> = (TaskExecutableDataHandler<DataType>, ModelType)

public protocol URLContainable {
    
    static var url: URL { get }
}

public protocol DataInitiable {
    
    associatedtype DataType
    
    static func initialize(with data: Result<DataType, Error>) -> Result<Self, Error>
}

public protocol NetworkProcessable: URLContainable, DataInitiable { }

public protocol Task {
   
    func resume()
    func cancel()
}

public protocol SessionService {
    
    associatedtype DataType
    
    typealias ResultedDataType = Result<DataType, Error>
    typealias DataTypeHandler = (ResultedDataType) -> ()
    
    static func dataTask(url: URL, completion: @escaping DataTypeHandler) -> Task
}
