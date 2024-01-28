//
//  RouletteView.swift
//  SupaRoulette
//
//  Created by MinhyunCho on 1/28/24.
//

import SwiftUI

struct RouletteView: View {
    @State private var showing = false
    @State private var title = ""
    
    var body: some View {
        VStack {
            Text("방이 존재하지 않습니다.")
                .font(.largeTitle)
            Button(action: {
                print("ButtonClicked")
                self.showing.toggle()
            }, label: {
                Text("클릭하여 새로운 방 만들기 (⌘+T)")
                    .foregroundColor(.blue)
            })
            .buttonStyle(.borderless)
            .keyboardShortcut("T")
            .alert("룰렛 방 이름을 입력해 주세요.", isPresented: $showing) {
                TextField("방 제목 입력", text: $title)
                    .autocorrectionDisabled()
                Button("취소", role: .cancel) {
                    print("취소")
                }
                Button("추가", role: .none) {
                    print($title)
                }
            }
        }
    }
}

#Preview {
    RouletteView()
}
