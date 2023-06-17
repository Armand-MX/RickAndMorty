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

    init(url: URL) {
        imageLoader = ImageLoader(url: url)
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
    
    private var url: URL
    private var urlPath: String {
        url.path()
    }
    private var task: URLSessionDataTask?
    
    init(url: URL) {
        self.url = url
        loadImage()
    }
 
    private func loadImage() {
        if let cachedImage = ImageCache.shared.get(forKey: urlPath) {
            self.image = cachedImage
            return
        }

        task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else { return }

            DispatchQueue.main.async {
                let image = UIImage(data: data)
                self.image = image
                ImageCache.shared.set(image!, forKey: self.urlPath)
            }
        }
        task?.resume()
    }
}
