//
//  ContentView.swift
//  MusicApp
//
//  Created by Hidayat Abisena on 16/07/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationSplitView {
            SideMenuView()
        } detail: {
            AlbumView()
        }
    }
}

#Preview {
    ContentView()
}
