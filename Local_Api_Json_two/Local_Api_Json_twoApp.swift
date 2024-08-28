//
//  Local_Api_Json_twoApp.swift
//  Local_Api_Json_two
//
//  Created by Famil Mustafayev on 25.06.24.
//

import SwiftUI

@main
struct Local_Api_Json_twoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
