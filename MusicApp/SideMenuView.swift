//
//  SideMenuView.swift
//  MusicApp
//
//  Created by Hidayat Abisena on 16/07/23.
//

import SwiftUI

struct SideMenuView: View {
    // MARK: - PROPERTIES
    @State private var selectedMenu: SideMenuItem? = sideMenuItems.first!
    
    // MARK: - BODY
    var body: some View {
        List(sideMenuItems) { item in
            NavigationLink(value: item) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }
        }
        .navigationDestination(for: SideMenuItem.self) { item in
            // TODO: Album View
        }
        .toolbar(content: {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading, content: {
                    Text("Library")
                        .font(.largeTitle)
                    
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                })
                .padding(8)
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }
        })
    }
}

// MARK: - PREVIEW
#Preview {
    SideMenuView()
}
