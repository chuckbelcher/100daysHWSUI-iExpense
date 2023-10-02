//
//  Expenses.swift
//  iExpense
//
//  Created by Chuck Belcher on 10/1/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
