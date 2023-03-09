//
//  MyNewTime.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 7/3/2023.
//

import SwiftUI

struct MyNewTime: View {
        @State var strokeChoice = "Stroke"
        @State var compChoice = "Comp"
        @State var distanceChoice = "Distance"
    
    var body: some View {
        VStack {
            Text("My New Time").font(.largeTitle).foregroundColor(.black).fontWeight(.bold)
                .padding()
            Menu {
                
                Button(action: {
                    strokeChoice = "Long Course"
                }, label: {
                    Text("Long Course")
                })
                Button(action: {
                    compChoice = "Short Course"
                }, label: {
                    Text("Short Course")
                })
            } label: {
                Label (
                    title: {Text("\(compChoice)") },
                    icon: {Image(systemName: "") }
                )
            }
            
            .padding()
            
            Menu {
                Button(action: {
                    strokeChoice = "Freestyle"
                }, label: {
                    Text("Freestyle")
                })
                Button(action: {
                    strokeChoice = "Breastroke"
                }, label: {
                    Text("Breastroke")
                })
                Button(action: {
                    strokeChoice = "Backstroke"
                }, label: {
                    Text("Backstroke")
                })
                Button(action: {
                    strokeChoice = "Butterfly"
                }, label: {
                    Text("Butterfly")
                })
                Button(action: {
                    strokeChoice = "Individual Medley"
                }, label: {
                    Text("Individual Medley")
                })
            } label: {
                Label (
                    title: {Text("\(strokeChoice)") },
                    icon: {Image(systemName: "") }
                )
            }
            
            .padding()
            
            Menu {
                Button(action: {
                    distanceChoice = "1500m"
                }, label: {
                    Text("1500m")
                })
                Button(action: {
                    distanceChoice = "800m"
                }, label: {
                    Text("800m")
                })
                Button(action: {
                    distanceChoice = "400m"
                }, label: {
                    Text("400m")
                })
                Button(action: {
                    distanceChoice = "200m"
                }, label: {
                    Text("200m")
                })
                Button(action: {
                    distanceChoice = "100m"
                }, label: {
                    Text("100m")
                })
                Button(action: {
                    distanceChoice = "50m"
                }, label: {
                    Text("50m")
                })
                Button(action: {
                    distanceChoice = "25m"
                }, label: {
                    Text("25m")
                })
            } label: {
                Label (
                    title: {Text("\(distanceChoice)") },
                    icon: {Image(systemName: "") }
                )
            }
            
            .padding()
        }
    }
}

struct MyNewTime_Previews: PreviewProvider {
    static var previews: some View {
        MyNewTime()
    }
}
