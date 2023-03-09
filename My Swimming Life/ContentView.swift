//
//  ContentView.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 7/3/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List{
                
                NavigationLink(destination: MyNewTime()) { Text("My New Time") }
                
                NavigationLink(destination: MyTimes()) { Text("My Times") }

                
            }
            .navigationTitle("My Swimming Life")
        }
                        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
