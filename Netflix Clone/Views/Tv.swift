//
//  Tv.swift
//  Netflix Clone
//
//  Created by Samet KATI on 15.08.2024.
//

import Foundation

struct TrendingTvResponse : Codable {
    let results : [Tv]
}

struct Tv : Codable {
    let id : Int
    let media_type : String?
    let original_language : String?
    let original_title : String?
    let overview : String?
    let poster_path : String?
    let release_date : String?
    let vote_average : Double
}
