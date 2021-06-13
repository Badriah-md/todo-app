//
//  ListView.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel : ListViewModel
    
    @State var items  : [itemModel] = []
    
    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
                Text("empty list")
            }else{
                List{
                    ForEach(listViewModel.items) { item  in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }.onDelete(perform: listViewModel.deleteItem )
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
                //:List
            }
        }
        .navigationTitle("TO DO Listtt 🗒")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
        
        
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
        .environmentObject(ListViewModel())
        
    }
}


