//
//  ContentView.swift
//  Local_Api_Json_two
//
//  Created by Famil Mustafayev on 25.06.24.
//

import SwiftUI
struct ContentView: View {
   @ObservedObject var vm = ViewModel()
    @State var text = ""
    
    var body: some View {
        NavigationSplitView {
            List{
                ForEach(vm.data){user in
                    NavigationLink {
                        Text("\(user.title)  \(text)")
                        VStack{
                            TextField(text: $text) {
                                Text("add Title")
                            }.textFieldStyle(.roundedBorder)
                            Button(action: {
                                user.title = text
                                
                            }, label: {
                                Text("Save")
                            })
                        }.padding(30)
                    } label: {
                        Text("\(user.id)").padding().overlay{
                            Circle().stroke(.blue)
                        }
                        Text(user.title)

                    }

                }
            }
            .onAppear(){
                if vm.data.isEmpty{
                    Task{
                        await vm.fetchData()
                    }
                }
            }
            .navigationTitle("Users")
        } detail: {
            
        }

        }
    }


#Preview(windowStyle: .automatic) {
    ContentView()
}
