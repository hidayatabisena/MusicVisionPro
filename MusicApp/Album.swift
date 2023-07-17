//
//  Album.swift
//  MusicApp
//
//  Created by Hidayat Abisena on 16/07/23.
//

import Foundation

struct Album: Identifiable {
    let id: String
    let image: String
    let title: String
    let subtitle: String
}

// Function to fetch album data from iTunes Search API
func fetchAlbumData(completion: @escaping (Album?) -> Void) {
    let searchTerm = "Muse" // Specify the search term for the album you want to retrieve
    
    guard let url = URL(string: "https://itunes.apple.com/search?term=\(searchTerm)&entity=album") else {
        completion(nil)
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data, error == nil else {
            completion(nil)
            return
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            let results = json?["results"] as? [[String: Any]]
            
            if let firstResult = results?.first {
                let id = firstResult["collectionId"] as? Int ?? 0
                let image = firstResult["artworkUrl100"] as? String ?? ""
                let title = firstResult["collectionName"] as? String ?? ""
                let subtitle = firstResult["artistName"] as? String ?? ""
                
                let album = Album(id: String(id), image: image, title: title, subtitle: subtitle)
                completion(album)
            } else {
                completion(nil)
            }
        } catch {
            completion(nil)
        }
    }
    
    task.resume()
}

/// Usage:
//fetchAlbumData { album in
//    if let album = album {
//        print(album)
//        // Use the album object in your app as needed
//    } else {
//        print("Failed to fetch album data.")
//    }
//}
