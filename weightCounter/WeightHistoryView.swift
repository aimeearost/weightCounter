//
//  WeightHistoryView.swift
//  weightCounter
//
//  Created by Aimee Arost on 12/18/23.
//

import SwiftUI
import SwiftData

struct WeightHistoryView: View {
    
    
    @Environment(\.modelContext) private var context
    
    @State private var isActive: Bool = false
    
    
    @Query private var items: [DataItem]
    @Query(sort: \DataItem.date, order: .reverse) private var sortedItems: [DataItem]

    
    @State private var name = ""
    @State private var weight: Double?
    @FocusState var focus: Bool
    
    
    var body: some View {
        
        
        
        VStack {
            List {
                ForEach (sortedItems) { item in
                    
                    HStack {
                        Text("Weight: \(String(format: "%.1f", item.weight))")
                        Spacer()
                        Text("\((item.date).formatted(.dateTime.day().month().year()))")
                        //                        Spacer()
                        //                        Button {
                        //                            updateItem(item)
                        //                        } label: {
                        //
                        //                            Image(systemName: "arrow.triangle.2.circlepath")
                        //                                .tint(Color.gray)
                        //
                        //                        }
                    }.foregroundColor(.yellow)
                    
                    
                }
                .onDelete(perform: { indexes in
                    for index in indexes {
                        deleteItem(sortedItems[index])
                    }
                })
            }
        }
    }
    
    
    func addItem() {
        //        Create item
        
        let item = DataItem(weight: weight ?? 0.0, date: Date())
        
        //        Add item to the data context
        context.insert(item)
        
        
    }
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        //        edit item
        //        save item
        try? context.save()
    }
}

#Preview {
    WeightHistoryView()
}
