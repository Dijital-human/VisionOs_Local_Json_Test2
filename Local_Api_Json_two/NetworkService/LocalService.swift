//
//  LocalService.swift
//  Local_Api_Json_two
//
//  Created by Famil Mustafayev on 25.06.24.
//

import Foundation

class LocalService:Codable{
    func downloadData<T: Codable> (fromurl: String)async -> T?{
        do{
            
            guard let url = Bundle.main.url(forResource: fromurl, withExtension: "json") else { throw ErrorManager.badFileName}
            guard let data = try? Data(contentsOf: url) else { throw ErrorManager.badData}
            guard let decodeData = try? JSONDecoder().decode(T.self, from: data) else {throw ErrorManager.badData}
            return decodeData
            
        }catch{
            print("Data Is failed")
        }
        return nil
        
        
    }
}
