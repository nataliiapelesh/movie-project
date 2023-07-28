//
//  DataController.swift
//  TMDBUI
//
//  Created by Евгений Скипор on 03.03.2023.
//

import CoreData
import Foundation

class DataController: ObservableObject{
    let container  = NSPersistentContainer(name: "TMDBUI")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
