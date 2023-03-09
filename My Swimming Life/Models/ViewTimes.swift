//
//  ViewTimes.swift
//  My Swimming Life
//
//  Created by Alexandra Southern on 9/3/2023.
//

import Foundation
import Firebase

class ViewTimes: ObservableObject {
    
    @Published var list = [Times]()
    
    func addTimes(Name: String, Comp: String, Distance: Int, Stroke: String, Time: Int) {
        
        let db = Firestore.firestore()
        
        db.collection("Swim Times").addDocument(data: ["Name":Name, "Comp":Comp, "Distance":Distance, "Stroke":Stroke, "Time":Time]) { error in
            
            if error == nil {
                self.getTimes()
            }
            else {
                
            }
        }
        
    }
    
    
    func getTimes() {
        
        // Get a reference  to the database
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
                            return Times(id: d.documentID,
                                        Name: d["Name"] as? String ?? "",
                                        Comp: d["Comp"] as? String ?? "",
                                        Distance: d["Distance"] as? Int ?? Int(),
                                        PersonalBest: d["Personal Best"] as? Bool ?? false,
                                        Stroke: d["Stroke"] as? String ?? "",
                                        Time: d["Time"] as? Int ?? Int())
                        }
                    }
                }
            }
            else {
                // handle the error
            }
        }
        
    }
    
}
