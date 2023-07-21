//
//  CastResponse.swift
//  TMDBUI
//
//  Created by Наталья Пелеш on 23.03.2023.
//


import Foundation
struct CastResponse : Codable {
    let id : Int?
    let cast : [CastResults]?
    let crew : [CastResults]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case cast = "cast"
        case crew = "crew"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        cast = try values.decodeIfPresent([CastResults].self, forKey: .cast)
        crew = try values.decodeIfPresent([CastResults].self, forKey: .crew)
    }

}
