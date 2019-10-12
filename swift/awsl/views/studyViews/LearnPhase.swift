//
//  LearnPhase.swift
//  awsl
//
//  Created by clavier on 2019-09-25.
//  Copyright © 2019 clavier. All rights reserved.
//

import SwiftUI

struct LearnPhase: View {
    
    @Binding var currentPhase : String
    
    @Binding var task: Task
    
    @State var toFinishStudyView: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            WordRow(task: task, withFurigara: true)
            
            MeaningRow(meanings: task.getWord().cn_meanings)
            
            ExampleRow(examples: task.getWord().cn_examples)

            Spacer().frame(height: 50)
            
            RedButton(text: "下一个", action: pressNext)
            
            NavigationLink(destination: FinishStudyView(), isActive: $toFinishStudyView) {
                EmptyView()
            }

        }
           .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
    
    func pressNext() {
        
        task.next()
        if (!task.isEmpty()) {
            print("next")
            currentPhase = "SELF_EVALUATION"
        } else {
            toFinishStudyView = true
            print("all done")
        }
        
    }
}