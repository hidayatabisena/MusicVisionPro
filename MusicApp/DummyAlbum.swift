//
//  DummyAlbum.swift
//  MusicApp
//
//  Created by Hidayat Abisena on 16/07/23.
//

import Foundation

struct DummyAlbum: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var subTitle: String
}

let albums: [DummyAlbum] = [
    DummyAlbum(image: "https://i.postimg.cc/ZvLtPzmB/Rectangle-4.png", title: "Sounds of Summer", subTitle: "The Beach Boys"),
    DummyAlbum(image: "https://i.postimg.cc/nMKJfBmF/Rectangle-5.png", title: "Overexposed", subTitle: "Maroon 5"),
    DummyAlbum(image: "https://i.postimg.cc/XpQ6pWxt/Rectangle-6.png", title: "Dreamland", subTitle: "Glass Animals"),
    DummyAlbum(image: "https://i.postimg.cc/G4twDf5t/Rectangle-7.png", title: "Modern Love (Chennai)", subTitle: "Yuvan Shankar Raja, Ila.."),
    DummyAlbum(image: "https://i.postimg.cc/9RZjMqNB/Rectangle-3.png", title: "Formula 1 Theme", subTitle: "Brian Tyler"),
    DummyAlbum(image: "https://i.postimg.cc/RNMzSh1c/Rectangle-8.png", title: "Ved", subTitle: "Ritviz"),
]
