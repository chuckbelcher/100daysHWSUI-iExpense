//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Chuck Belcher on 10/1/23.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
