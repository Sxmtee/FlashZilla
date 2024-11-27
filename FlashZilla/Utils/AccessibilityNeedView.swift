//
//  AccessibilityNeedView.swift
//  FlashZilla
//
//  Created by mac on 27/11/2024.
//

import SwiftUI

func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct AccessibilityNeedView: View {
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency

    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(reduceTransparency ? .black : .black.opacity(0.5))
            .foregroundStyle(.white)
            .clipShape(.capsule)
    }
    
    //! Accessibility Reduce Motion
//    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
//    @State private var scale = 1.0
//    
//    var body: some View {
//        Button("Hello, World!") {
//            withOptionalAnimation {
//                scale *= 1.5
//            }
//        }
//        .scaleEffect(scale)
//    }
    
    //! AccessibilityDifferentiateWithoutColor
//    @Environment(\.accessibilityDifferentiateWithoutColor) var accessibilityDifferentiateWithoutColor
//    
//    var body: some View {
//        HStack {
//            if accessibilityDifferentiateWithoutColor {
//                Image(systemName: "checkmark.circle")
//            }
//            
//            Text("Success")
//        }
//        .padding()
//        .background(accessibilityDifferentiateWithoutColor ? .black : .green)
//        .foregroundStyle(.white)
//        .clipShape(.capsule)
//    }
}

#Preview {
    AccessibilityNeedView()
}
