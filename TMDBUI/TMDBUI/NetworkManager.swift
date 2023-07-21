//
//  NetworkManager.swift
//  TMDBUI
//
//  Created by Наталья Пелеш on 23.03.2023.
//

import Foundation
//struct NetworkManager {
//    
//    func loadData() async {
//        guard let url = URL(string: "\(Constants.Network.baseURL)trending/movie/week?api_key=\(Constants.Network.apiKey)") else {
//            print("Invalid URL")
//            return
//        }
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                ContentView().results = decodedResponse.results ?? []
//            }
//        } catch {
//            print("Invalid data")
//        }
//        
//        
//    }
//}
