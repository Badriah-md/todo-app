//
//  ListViewModel.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import Foundation


class ListViewModel: ObservableObject {
    @Published var items :[itemModel] = []{
        didSet {
            saveItem()
        }
    }
    
    let itemKey: String = "item-list"
    init(){
        getItems()
    }
    
    func getItems(){
//      let newItems = [
//        itemModel(title: "this is first title", isCompleted: false),
//        itemModel(title: "this is second title", isCompleted: true),
//        itemModel(title: "this is third", isCompleted: false)
//      ]
//        items.append(contentsOf: newItems)
        
        guard
            let data = UserDefaults.standard.data(forKey: itemKey),
            let savedData = try? JSONDecoder().decode([itemModel].self, from: data)
        else{return}
        
        self.items = savedData
    }
    func deleteItem(indexset:IndexSet){
        items.remove(atOffsets: indexset)
    }
    func moveItem(from :IndexSet , to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title:String){
        let newItem = itemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: itemModel){
        
        if let index = items.firstIndex(where: { $0.id == item.id }){
            items[index] = item.updateIsCompleted()
        }
    }
    func saveItem(){
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.setValue(encodedData, forKey: itemKey)
        }
    }
}
