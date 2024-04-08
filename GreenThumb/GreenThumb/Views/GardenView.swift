//
//  GardenView.swift
//  GreenThumb
//
//  Created by Paris Floyd (Student) on 4/7/24.
//

import SwiftUI

struct GardenView: View {
    let rows: Int
    let columns: Int
    @State private var plants: [[Plant?]]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self._plants = State(initialValue: Array(repeating: Array(repeating: nil, count: columns), count: rows)) // Initial grid with nil
    }
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        PlantGridCell(plant: self.plants[row][column]) {
                            // Handle tap on cell
                            self.handleCellTap(row: row, column: column)
                        }
                        .aspectRatio(1, contentMode: .fit)
                    }
                }
            }
        }
    }
    
    func handleCellTap(row: Int, column: Int) {
        // Create or modify plant information here
        let newPlant = Plant(name: "Example Plant", color: .green) // Example plant data
        plants[row][column] = newPlant // Update plant data in the grid
    }
}

#Preview {
    GardenView(rows: 10, columns: 10)
}
