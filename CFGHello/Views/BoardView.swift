//
//  BoardView.swift
//  CFGHello
//
//  Created by Lau on 01/10/23.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack {
            ForEach(0..<Utils.maxCells) {
                row in
            
                HStack {
                    ForEach(0..<Utils.maxCells) {
                        cell in 
                        if (cell.isMultiple(of: 2)) {Image(systemName: "square.fill")
                            .foregroundColor(Utils.colorDarkCell)}
                        else {
                            Image(systemName: "square.fill")
                                .foregroundColor(Utils.colorLightCell)
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    BoardView()
}
