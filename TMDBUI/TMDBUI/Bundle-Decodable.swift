//
//  Bundle-Decodable.swift
//  TMDBUI
//
//  Created by Евгений Скипор on 02.03.2023.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file:String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
    
}
enum MediaType: String {
    case tv
    case movie
    case person
}

//func loadCast<T: Codable>(madiaType: MediaType, id: Int) -> T{
//    guard let urlForCast = Constants.Network.baseURL + madiaType.rawValue + "/\(id)/credits?api_key=\(Constants.Network.apiKey)&language=en-US" else {
//        fatalError("Failed to locate \(file) in bundle.")
//    return 1
//}

//func getCast(mediaType: MediaType, id: Int, completion: @escaping(Cast)->()) {
//    let urlForCast = Constants.Network.baseURL + mediaType.rawValue +  "/\(id)/credits?api_key=\(Constants.Network.apiKey)&language=en-US"
//    AF.request(urlForCast).responseJSON { response in
//        do {
//            if let allData = response.data {
//                let people = try JSONDecoder().decode(Cast.self, from: allData)
//                completion(people)
//            }
//        } catch {
//            print(error)
//        }
//    }
//}
