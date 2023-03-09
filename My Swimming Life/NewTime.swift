//
//  NewTime.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 9/3/2023.
//

import SwiftUI
import Firebase

struct NewTime: View {
    
    @ObservedObject var MyTimes = ViewTimes()

    @State var Name = ""
    @State var Comp = ""
    @State var Distance = Int()
    @State var Stroke = ""
    @State var Time = Int()
    var body: some View {

        VStack {
            
            List (MyTimes.list) { item in
                Text(item.Name)
            }
            
            .padding()
            
            Text("Add New Time").font(.largeTitle).foregroundColor(.black)

        VStack(spacing: 5) {
            
            TextField("Name", text: $Name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
                .padding()

            TextField("Comp", text: $Comp)
                .textFieldStyle(RoundedBorderTextFieldStyle())

                .padding()

            TextField("Distance", value: $Distance, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())

                .padding()

            TextField("Stroke", text: $Stroke)
                .textFieldStyle(RoundedBorderTextFieldStyle())

                .padding()

            TextField("Time", value: $Time, format: .number)
                .textFieldStyle(RoundedBorderTextFieldStyle())

                .padding()
            
            Button(action: {
                
                MyTimes.addTimes(Name: Name, Comp: Comp, Distance: Distance, Stroke: Stroke, Time: Time)
                
                Name = ""
                Comp = ""
                Distance = 0
                Stroke = ""
                Time = 0
                
            }, label: {
                Text("Add New Time")
            })
           
            .padding()



            }
        }

    }
    
    init() {
        MyTimes.getTimes()
    }
    
    
}

struct NewTime_Previews: PreviewProvider {
    static var previews: some View {
        NewTime()
    }
}
