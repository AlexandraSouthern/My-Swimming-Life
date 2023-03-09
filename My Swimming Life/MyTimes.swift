//
//  MyTimes.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 9/3/2023.
//

import SwiftUI
import Firebase

struct MyTimes: View {
    
    @ObservedObject var model = ViewTimes()
    
    var body: some View {
            
        List (model.list) { item in
            Text(item.Name)
        }
    }
    
    init() {
        model.getTimes()
    }
}

struct MyTimes_Previews: PreviewProvider {
    static var previews: some View {
        MyTimes()
    }
}
