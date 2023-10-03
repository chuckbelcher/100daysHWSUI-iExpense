//
//  ContentView.swift
//  iExpense
//
//  Created by Chuck Belcher on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    @State private var showingAddExpense = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(expenses.items) { item in
                        Text(item.name)
                    }
                    .onDelete(perform: removeItems)
                }
                .toolbar {
                    Button {
//                        let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
//                        expenses.items.append(expense)
                        showingAddExpense = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
            }
            .navigationTitle("iExpense")
        }
        .sheet(isPresented: $showingAddExpense)  {
            AddView(expenses: expenses)
        }
        
    }
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
