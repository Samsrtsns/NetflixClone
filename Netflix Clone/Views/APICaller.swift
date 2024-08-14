//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Samet KATI on 14.08.2024.
//

import Foundation

struct Constants {
    static let API_KEY = "b37a45c462923c73dae785e13bbd5a27"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion : @escaping (String) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
                            
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data , _ ,error in
            guard let data = data, error == nil else {
                return
            }
        
            do {
                let results = try JSONSerialization.jsonObject(with: data,options: .fragmentsAllowed)
                print(results)
            }catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
}
