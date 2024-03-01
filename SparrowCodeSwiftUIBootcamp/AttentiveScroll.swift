//
//  AttentiveScroll.swift
//  SparrowCodeSwiftUIBootcamp
//
//  Created by Валерий Зазулин on 01.03.2024.
//

import SwiftUI

struct AttentiveScroll: View {
    var body: some View {
        TabView {
            ScrollView {
                ForEach(0..<100) { number in
                    Text("\(number + 1)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.gray.opacity(0.8))
                        .frame(maxWidth: .infinity)
                }
            }
            .safeAreaInset(edge: .bottom) {
                Rectangle()
                    .frame(height: 50)
                    .foregroundStyle(Color.red.opacity(0.8))
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
            }
        }
    }
}

#Preview {
    AttentiveScroll()
}
