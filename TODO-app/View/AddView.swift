//
//  AddView.swift
//  TODO-app
//
//  Created by Bdoor on 26/10/1442 AH.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textField :String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("type here...", text: $textField)
                    
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(15)
                
                Button(
                    action: saveButtonPressed,
                    label: {
                        Text("save".uppercased())
                          
                            .padding(10)
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame( height:55)
                            .frame(maxWidth:.infinity)
                            .background(Color.accentColor)
                            .cornerRadius(15)
                           
                            
                            
                })
                   
                
            }//:vstack
            .padding(16)
        }//:scroll
        
        .navigationBarTitle("Add an Item")
    }
    func saveButtonPressed(){
        listViewModel.addItem(title: textField)
        presentationMode.wrappedValue.dismiss()
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
        
    }
}
