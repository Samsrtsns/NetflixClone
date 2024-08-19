//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Samet KATI on 19.08.2024.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}


struct VideoElement: Codable {
    let id: IdVideoElement
}


struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
