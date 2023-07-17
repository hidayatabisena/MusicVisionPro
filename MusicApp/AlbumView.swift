//
//  AlbumView.swift
//  MusicApp
//
//  Created by Hidayat Abisena on 16/07/23.
//

import SwiftUI

struct AlbumView: View {
    
    @State private var searchText: String = ""
    
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        ScrollView {
            TextField("Search in iTunes", text: $searchText)
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            // Album Grids
            LazyVGrid(columns: columns, spacing: 24) {
                ForEach(albums) { album in
                    Button(action: {}) {
                        VStack(alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Rectangle().foregroundStyle(.tertiary)
                            }.aspectRatio(1, contentMode: .fill)
                                .scaledToFill()
                                .cornerRadius(10)
                            
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subTitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }
                        .hoverEffect()
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal, 24)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading, content: {
                    Text("Albums")
                        .font(.largeTitle)
                    
                    Text("All songs")
                        .foregroundStyle(.tertiary)
                })
                .padding(8)
            }
            ToolbarItem {
                Button {} label: {
                    Image(systemName: "line.3.horizontal.decrease")
                }
            }
        }
        // TODO: Media controller
    }
}

#Preview {
    AlbumView()
}
