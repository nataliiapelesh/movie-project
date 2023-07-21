
import Foundation
struct Results : Codable, Identifiable {
	let adult : Bool?
	let backdropPath : String?
	let id : Int?
	let title : String?
	let originalLanguage : String?
	let originalTitle : String?
	let overview : String?
	let posterPath : String?
	let mediaType : String?
	let genreIds : [Int]?
	let popularity : Double?
	let releaseDate : String?
	let video : Bool?
	let voteAverage : Double?
	let voteCount : Int?
    let name : String?
    let originalName : String?
    let firstAirDate : String?
    let originCountry : [String]?
    let gender : Int?
//    let known_for : [Known_for]?
    let knownForDepartment : String?
    let profilePath : String?

	enum CodingKeys: String, CodingKey {

		case adult = "adult"
		case backdropPath = "backdrop_path"
		case id = "id"
		case title = "title"
		case originalLanguage = "original_language"
		case originalTitle = "original_title"
		case overview = "overview"
		case posterPath = "poster_path"
		case mediaType = "media_type"
		case genreIds = "genre_ids"
		case popularity = "popularity"
		case releaseDate = "release_date"
		case video = "video"
		case voteAverage = "vote_average"
		case voteCount = "vote_count"
        case firstAirDate = "first_air_date"
        case name = "name"
        case originCountry = "origin_country"
        case originalName = "original_name"
        case gender = "gender"
//        case known_for = "known_for"
        case knownForDepartment = "known_for_department"
        case profilePath = "profile_path"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
		backdropPath = try values.decodeIfPresent(String.self, forKey: .backdropPath)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		originalLanguage = try values.decodeIfPresent(String.self, forKey: .originalLanguage)
		originalTitle = try values.decodeIfPresent(String.self, forKey: .originalTitle)
		overview = try values.decodeIfPresent(String.self, forKey: .overview)
		posterPath = try values.decodeIfPresent(String.self, forKey: .posterPath)
		mediaType = try values.decodeIfPresent(String.self, forKey: .mediaType)
		genreIds = try values.decodeIfPresent([Int].self, forKey: .genreIds)
		popularity = try values.decodeIfPresent(Double.self, forKey: .popularity)
		releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
		video = try values.decodeIfPresent(Bool.self, forKey: .video)
		voteAverage = try values.decodeIfPresent(Double.self, forKey: .voteAverage)
		voteCount = try values.decodeIfPresent(Int.self, forKey: .voteCount)
        firstAirDate = try values.decodeIfPresent(String.self, forKey: .firstAirDate)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        originCountry = try values.decodeIfPresent([String].self, forKey: .originCountry)
        originalName = try values.decodeIfPresent(String.self, forKey: .originalName)
        gender = try values.decodeIfPresent(Int.self, forKey: .gender)
//        known_for = try values.decodeIfPresent([Known_for].self, forKey: .known_for)
        knownForDepartment = try values.decodeIfPresent(String.self, forKey: .knownForDepartment)
        profilePath = try values.decodeIfPresent(String.self, forKey: .profilePath)
	}

}
