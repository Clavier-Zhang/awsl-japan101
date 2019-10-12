//
//  MeaningRow.swift
//  awsl
//
//  Created by clavier on 2019-10-11.
//  Copyright © 2019 clavier. All rights reserved.
//

import SwiftUI

struct MeaningRow: View {
    
    @State var meanings: [String]
    
    var body: some View {
        VStack {
            
            Spacer().frame(height: 10)
            
            Text("名词")
                .font(large).bold()
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 20)
            
            ForEach(0..<self.meanings.count) { idx in
                Text(String(idx+1) + ". " + self.meanings[idx])
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer().frame(height: 10)
            }
        }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .background(base)
    }
}

