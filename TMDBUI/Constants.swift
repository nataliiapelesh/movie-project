//
//  Constants.swift
//  TMDBUI
//
//  Created by Евгений Скипор on 16.03.2023.
//

import Foundation

struct Constants{
    
    struct Network {
        static let baseURL = "https://api.themoviedb.org/3/"
        static let apiKey = "2bdbbce0620810b5f8b406bdd0a766c5"
        static let defaultImageUrl = "https://image.tmdb.org/t/p/w500"
    }
    
    struct DefaultValues {
        let defaultValueString = "No information"
        let defaultValueInt = 0
        let defaultValueDouble = 0.0
        let defaultValueForYTKey = "jHWKtQHXVJg"
        let defaultMediaId = 00000
        let defaultPersonId = 00000
     
    }
   
}
