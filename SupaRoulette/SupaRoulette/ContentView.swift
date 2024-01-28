//
//  ContentView.swift
//  SupaRoulette
//
//  Created by MinhyunCho on 1/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            SidebarView()
        } detail: {
            RouletteView()
        }
    }
}

#Preview {
    ContentView()
}
