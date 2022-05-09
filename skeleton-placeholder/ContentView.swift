//
//  ContentView.swift
//  skeleton-placeholder
//
//  Created by Alexey Strelnikov on 08.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<4) {_ in
                    SkeletonRow()
                        .padding(.vertical)
                }
                .padding()
            }
            .navigationTitle("Skeleton Views Demo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
