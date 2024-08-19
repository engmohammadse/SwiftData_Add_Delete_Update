//
//  ContentView.swift
//  swiftDataDemo
//
//  Created by Muhammad Alaraji on 19/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var items: [DataItem]
    
    
    var body: some View {
        VStack {
            
            Text("Tap on this button to add data")
            Button("Add an item") {
                addItem()
            }
            
            // show items
            List {
                ForEach (items) { item in
                    
                    HStack{
                        
                        Text(item.name)
                        Spacer()
                        
                        Button{
                            updateItem(_item: item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }
                // delete items
                .onDelete { indexes in
                    for index in indexes {
                        deleteItem(_item: items [index])
                    }
                }
            }
            
        }
        .padding()
    }
    
    
    func addItem() {
        // Create the item
        let item = DataItem(name: "Test Item")
        // Add the item to the data context
        context.insert(item)
    }
    
    func deleteItem(_item: DataItem) {
        context.delete(_item)
    }
    
    func updateItem (_item: DataItem){
       // edite the item data
        _item.name = "Updated Test Item"
        // save the context
        try? context.save()
    }
}

#Preview {
    ContentView()
}
