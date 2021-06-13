//
//  itemModel.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import Foundation


struct itemModel:Identifiable,Codable {
    let id : String
    let title : String
    let isCompleted : Bool
    
    init(id:String = UUID().uuidString , title:String, isCompleted:Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
        
    }
    
    func updateIsCompleted() -> itemModel {
        return itemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
