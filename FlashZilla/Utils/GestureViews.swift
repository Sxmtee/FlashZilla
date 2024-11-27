//
//  GestureViews.swift
//  FlashZilla
//
//  Created by mac on 27/11/2024.
//

import SwiftUI

struct GestureViews: View {
    // how far the circle has been dragged
    @State private var offset = CGSize.zero
    // whether it is currently being dragged or not
    @State private var isDragging = false
    
//    @State private var currentAmount = Angle.zero
//    @State private var finalAmount = Angle.zero
    
    var body: some View {
        
        // a drag gesture that updates offset and isDragging as it moves around
        let dragGesture = DragGesture()
            .onChanged { value in offset = value.translation }
            .onEnded { _ in
                withAnimation {
                    offset = .zero
                    isDragging = false
                }
            }

        // a long press gesture that enables isDragging
        let pressGesture = LongPressGesture()
            .onEnded { value in
                withAnimation {
                    isDragging = true
                }
            }

        // a combined gesture that forces the user to long press then drag
        let combined = pressGesture.sequenced(before: dragGesture)
        
    // a 64x64 circle that scales up when it's dragged, sets its offset to whatever we had back from the drag gesture, and uses our combined gesture
        Circle()
            .fill(.red)
            .frame(width: 64, height: 64)
            .scaleEffect(isDragging ? 1.5 : 1)
            .offset(offset)
            .gesture(combined)

        //! Simultaneous and High priority gestures
//        VStack {
//            Text("Hello, World!")
//                .onTapGesture {
//                    print("Text tapped")
//                }
//        }
//        .highPriorityGesture(
//            TapGesture()
//                .onEnded {
//                    print("VStack tapped")
//                }
//        )
//        .simultaneousGesture(
//            TapGesture()
//                .onEnded {
//                    print("VStack tapped")
//                }
//        )
        
        //! Rotate Effect
//        Text("Hello World!")
//            .rotationEffect(currentAmount + finalAmount)
//            .gesture(
//                RotateGesture()
//                    .onChanged { value in
//                        currentAmount = value.rotation
//                    }
//                    .onEnded { value in
//                        finalAmount += currentAmount
//                        currentAmount = .zero
//                    }
//            )
        
        //! Scale Effect
//        Text("Hello World!")
//            .scaleEffect(finalAmount + currentAmount)
//            .gesture (
//                MagnifyGesture()
//                    .onChanged { value in
//                        currentAmount = value.magnification - 1
//                    }
//                    .onEnded { value in
//                        finalAmount += currentAmount
//                        currentAmount = 0
//                    }
//            )
        
        //! Normal Taps
//        Text("Hello World!")
//            .onTapGesture(count: 2) {
//                print("2 counts")
//            }
//            .onLongPressGesture(minimumDuration: 1) {
//                print("Tapped twice")
//            } onPressingChanged: { inProgress in
//                print("In progress \(inProgress)")
//            }
    }
}

#Preview {
    GestureViews()
}
