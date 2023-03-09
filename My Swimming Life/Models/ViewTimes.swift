//
//  ViewTimes.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 10/3/2023.
//

import Foundation
import Firebase

class ViewTimes: ObservableObject {
    
    @Published var list = [SwimTimes]()
    
    func addData(Comp: String, Distance: String, Name: String, Stroke: String, Time: String) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Add a document to a collection
        db.collection("Swim Times").addDocument(data: ["Comp": Comp, "Distance": Distance, "Name": Name, "Stroke": Stroke, "Time": Time]) { error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                // Call get data to retrieve latest data
                self.getData()
            }
            else {
                // Handle the error
            }
        }
    }
    
    
    
    func getData() {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("Swim Times").getDocuments { snapshot, error in
            
            // check for errors
            if error == nil {
                // no errors
                
                if let snapshot = snapshot {
                    
                    //update list property in main thread
                    DispatchQueue.main.async {
                        // get all documents
                        
                        self.list = snapshot.documents.map { d in
                            
                            //create timedetails for each document
                            return SwimTimes(id: d.documentID,
                                        Comp: d["Comp"] as? String ?? "",
                                        Distance: d["Distance"] as? String ?? "",
                                        Name: d["Name"] as? String ?? "",
                                        Stroke: d["Stroke"] as? String ?? "",
                                        Time: d["Time"] as? String ?? "")
                        }
                    }
                    
                    
                }
            }
            else {
                // Handle the error
            }
        }
    }
}
