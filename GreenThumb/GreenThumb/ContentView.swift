//
//  ContentView.swift
//  GreenThumb
//
//  Created by Paris Floyd (Student) on 4/7/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        GardenView(rows: 10, columns: 10) // Customize grid size as needed
    }
}


