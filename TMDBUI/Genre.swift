////
////  Genre.swift
////  TMDBUI
////
////  Created by Евгений Скипор on 17.03.2023.
////
//
//import Foundation
////
////    case Action
////    case Adventure
////    case Animation
////    case Comedy
////    case Crime
////    case Documentary
////    case Drama
////    case Family
////    case Fantasy
////    case History
////    case Horror
////    case Music
//enum GengeType: Int {
//
////    case Mystery
////    case Romance
////    case Science Fiction
////    case TV Movie
////    case Thriller
////    case War
////    case Western
////    case 28, 12, 16, 35, 80, 99, 18, 10751, 14, 36, 27, 10402, 9648, 10749, 878, 10770, 53, 10752, 37
//}
//
//let genres = [28, 12, 16, 35, 80, 99, 18, 10751, 14, 36, 27, 10402, 9648, 10749, 878, 10770, 53, 10752, 37]
//var selectedGenses = [String]()
//
//func findGenre(for ids: [Int])-> [String]{
//    for id in ids{
//        if id == 28{
//            selectedGenses.insert("Action", at: 0)
//        }
//        if id == 12{
//            selectedGenses.insert("Adventure", at: 0)
//        }
//        if id == 16{
//            selectedGenses.insert("Animation", at: 0)
//        }
//        if id == 35{
//            selectedGenses.insert("Comedy", at: 0)
//        }
//        if id == 80{
//            selectedGenses.insert("Crime", at: 0)
//        }
//        if id == 99{
//            selectedGenses.insert("Documentary", at: 0)
//        }
//        if id == 18{
//            selectedGenses.insert("Drama", at: 0)
//        }
//        if id == 10751{
//            selectedGenses.insert("Family", at: 0)
//        }
//        if id == 14{
//            selectedGenses.insert("Fantasy", at: 0)
//        }
//        if id == 36{
//            selectedGenses.insert("History", at: 0)
//        }
//        if id == 27{
//            selectedGenses.insert("Horror", at: 0)
//        }
//        if id == 10402{
//            selectedGenses.insert("Music", at: 0)
//        }
//        if id == 9648{
//            selectedGenses.insert("Mystery", at: 0)
//        }
//        if id == 10749{
//            selectedGenses.insert("Romance", at: 0)
//        }
//        if id == 878{
//            selectedGenses.insert("Science Fiction", at: 0)
//        }
//        if id == 10770{
//            selectedGenses.insert("TV Movie", at: 0)
//        }
//        if id == 53{
//            selectedGenses.insert("Thriller", at: 0)
//        }
//        if id == 10752{
//            selectedGenses.insert("War", at: 0)
//        }
//        if id == 37{
//            selectedGenses.insert("Western", at: 0)
//        } else {
//            selectedGenses.insert("No info", at: 0)
//        }
//    }
//return selectedGenses
//}
////            "id": 28,
////            "name": "Action"
////        },
////        {
////            "id": 12,
////            "name": "Adventure"
////        },
////        {
////            "id": 16,
////            "name": "Animation"
////        },
////        {
////            "id": 35,
////            "name": "Comedy"
////        },
////        {
////            "id": 80,
////            "name": "Crime"
////        },
////        {
////            "id": 99,
////            "name": "Documentary"
////        },
////        {
////            "id": 18,
////            "name": "Drama"
////        },
////        {
////            "id": 10751,
////            "name": "Family"
////        },
////        {
////            "id": 14,
////            "name": "Fantasy"
////        },
////        {
////            "id": 36,
////            "name": "History"
////        },
////        {
////            "id": 27,
////            "name": "Horror"
////        },
////        {
////            "id": 10402,
////            "name": "Music"
////        },
////        {
////            "id": 9648,
////            "name": "Mystery"
////        },
////        {
////            "id": 10749,
////            "name": "Romance"
////        },
////        {
////            "id": 878,
////            "name": "Science Fiction"
////        },
////        {
////            "id": 10770,
////            "name": "TV Movie"
////        },
////        {
////            "id": 53,
////            "name": "Thriller"
////        },
////        {
////            "id": 10752,
////            "name": "War"
////        },
////        {
////            "id": 37,
////            "name": "Western"
////        }
