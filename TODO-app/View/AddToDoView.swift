//
//  AddToDoView.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import SwiftUI

struct AddToDoView: View {
    //MARK: -Properties
    @State private var name :String = ""
    @State private var priority :String = "Normal"
    
    //MARK: -body
   
    
    
    var body: some View {
       
        NavigationView{
            VStack{
                Form{
                    Text("Hello, World!")
                    Text("wow")
                }//:form
               Spacer()
                Form{
                    Text("Hello, World!")
                    Text("wow")
                }//:form
               
            }//:vstack
            .navigationBarTitle("To Do App")
        }//:Navigation
       
    }
}

struct AddToDoView_Previews: PreviewProvider {
    static var previews: some View {
        AddToDoView()
    }
}
