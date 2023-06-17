//
//  RemoteImage.swift
//  RickAndMorty
//
//  Created by Armando Alvarado on 16/06/23.
//

import Foundation
import SwiftUI

class ImageCache {
    static let shared = ImageCache()

    private let cache = NSCache<NSString, UIImage>()

    private init() {}

    func set(_ image: UIImage, forKey key: String) {
        cache.setObject(image, forKey: key as NSString)
    }

    func get(forKey key: String) -> UIImage? {
        return cache.object(forKey: key as NSString)
    }
}

struct RemoteImage: View {
    @ObservedObject var imageLoader: ImageLoader

    init(urlString: String) {
        imageLoader = ImageLoader(urlString: urlString)
    }

    var body: some View {
        if let image = imageLoader.image {
            Image(uiImage: image)
                .resizable()
        } else {
            ProgressView()
        }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    
    private var urlString: String

    private var task: URLSessionDataTask?
    
    init(urlString: String) {
        self.urlString = urlString
        loadImage()
    }
 
    private func loadImage() {
        if let cachedImage = ImageCache.shared.get(forKey: urlString) {
            self.image = cachedImage
            return
        }

        guard let url = URL(string: urlString) else {
            return
        }
        
        task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }

            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.image = image
                ImageCache.shared.set(image!, forKey: self.urlString)
            }
        }
        task?.resume()
    }
}
