//
//  HitTestingView.swift
//  FlashZilla
//
//  Created by mac on 27/11/2024.
//

import SwiftUI

struct HitTestingView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!")
        }
        
        //! ZStack tapping
//        ZStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped!")
//                }
//
//            Circle()
//                .fill(.red)
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Circle tapped!")
//                }
//                .allowsHitTesting(false)
//        }
    }
}

#Preview {
    HitTestingView()
}
