//
//  ViewModel.swift
//  Local_Api_Json_two
//
//  Created by Famil Mustafayev on 25.06.24.
//

import Foundation


@MainActor class ViewModel: ObservableObject{
    @Published var data = [User]()
    func fetchData()async{
        guard let datadecode:[User] = await LocalService().downloadData(fromurl: "user")else{ return}
        data = datadecode
    }
}
