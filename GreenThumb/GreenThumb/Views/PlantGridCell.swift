//
//  PlantGridCell.swift
//  GreenThumb
//
//  Created by Paris Floyd (Student) on 4/7/24.
//

import SwiftUI

struct PlantGridCell: View {
    let plant: Plant?
        let onTap: () -> Void
        
        var body: some View {
            Button(action: {
                        // Handle click action
                        print("Rectangle clicked!")
                    }) {
                        Rectangle()
                            .fill(Color.green)
                            .frame(width: 100, height: 50)
                    }
                    .buttonStyle(PlainButtonStyle())
        }
}
