//
//  AddTime.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 10/3/2023.
//

import SwiftUI
import Firebase

struct AddTime: View {
    
    @ObservedObject var model = ViewTimes()
    
    @State var Comp = ""
    @State var Distance = ""
    @State var Name = ""
    @State var Stroke = ""
    @State var Time = ""
    
    var body: some View {
        
        VStack {
        
            List (model.list) { item in
                
                Text(item.Name)
                
            }
                
                VStack {
                    
                    
                    
                    Text("Add New Time").font(.largeTitle).foregroundColor(.black)
                        .padding()
                    
                    
                    TextField("Comp", text: $Comp)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Distance", text: $Distance)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Name", text: $Name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    TextField("Stroke", text: $Stroke)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Time", text: $Time)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        
                        // Call add data
                        model.addData(Comp: Comp, Distance: Distance, Name: Name, Stroke: Stroke, Time: Time)
                        
                        // Clear the text fields
                        Comp = ""
                        Distance = ""
                        Name = ""
                        Stroke = ""
                        Time = ""
                        
                    }, label: {
                        Text("Add New Time")
                    })
                    
                }
            
            .padding()
            
        }
        
        
    }
    init() {
        model.getData()
    }
}

struct AddTime_Previews: PreviewProvider {
    static var previews: some View {
        AddTime()
    }
}
