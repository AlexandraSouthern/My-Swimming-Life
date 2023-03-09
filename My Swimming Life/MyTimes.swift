//
//  MyTimes.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 9/3/2023.
//

import SwiftUI
import Firebase

struct MyTimes: View {
    
    @ObservedObject var MyTimes = ViewTimes()
    
    var body: some View {
            
        List (MyTimes.list) { item in
            Text(item.Name)
        }
    }
    
    init() {
        MyTimes.getTimes()
    }
}

struct MyTimes_Previews: PreviewProvider {
    static var previews: some View {
        MyTimes()
    }
}
