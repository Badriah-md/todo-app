//
//  ListRowView.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import SwiftUI

struct ListRowView: View {
    let item : itemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle" )
                .foregroundColor( item.isCompleted ? .green : .red)
           
            Text(item.title)
            Spacer()
            
        }//:Hstack
        .font(.title2)
        .padding(.vertical ,15)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static let item1 = itemModel(title: "this is one", isCompleted: false)
    static let item2 = itemModel(title: "this is tow", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
