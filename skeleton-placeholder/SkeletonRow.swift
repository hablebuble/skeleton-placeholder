//
//  SkeletonRow.swift
//  skeleton-placeholder
//
//  Created by Alexey Strelnikov on 08.05.2022.
//

import SwiftUI

struct SkeletonRow: View {
    @State var startPoint = UnitPoint.topLeading
    @State var endPoint = UnitPoint.bottomTrailing
    
    var gradient = [Color("DarkColor"), Color("LightColor")]
    
    var body: some View {
        VStack(alignment: .leading) {
            infoPlaceholder.padding(.bottom, 8)
            descriptionPlaceholder.padding(.bottom, 8)
            footerPlaceholder
        }
        .onAppear(perform: {
            DispatchQueue.main.async {
                withAnimation(.easeInOut(duration: 1.0).repeatForever()) {
                    self.startPoint = UnitPoint(x: 0.5, y: 0.5)
                }
            }
        }
        )
    }
    var gradientFill: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: self.gradient),
            startPoint: self.startPoint,
            endPoint: self.endPoint
        )
    }
    
    var infoPlaceholder: some View {
        HStack {
            Circle()
                .fill(gradientFill)
                .frame(width: 50, height: 50)
            infoPlaceholderText
            Spacer()
        }
    }
    
    var infoPlaceholderText: some View {
        VStack(alignment: .leading) {
            Capsule()
                .fill(gradientFill)
                .frame(width: 300, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 200, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 250, height: 10)
            
        }
    }
    
    var descriptionPlaceholder: some View {
        VStack(alignment: .leading) {
            Capsule()
                .fill(gradientFill)
                .frame(width: 350, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 280, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 350, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 300, height: 10)
        }
    }
    
    var footerPlaceholder: some View {
        HStack {
            Capsule()
                .fill(gradientFill)
                .frame(width: 20, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 40, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 30, height: 10)
            Spacer()
            Capsule()
                .fill(gradientFill)
                .frame(width: 20, height: 10)
            Capsule()
                .fill(gradientFill)
                .frame(width: 20, height: 10)
        }
    }
}
