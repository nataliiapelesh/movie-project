//
//  DetailView.swift
//  TMDBUI
//
//  Created by Евгений Скипор on 13.03.2023.
//

import SwiftUI

struct DetailView: View {
    let movieResults: Results
    var selectedGenses = [String]()
    
    var body: some View {
        GeometryReader { geometry in
                    ScrollView {
                        VStack {
                            AsyncImage(url: URL(string: Constants.Network.defaultImageUrl + (movieResults.backdropPath ?? "/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg") )) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFill()
                                        .frame(maxWidth: geometry.size.width * 1)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .padding(.top)
                                    //                                    .frame(width: geo.size.width * 1)
                                    //                                    .frame(width: geo.size.width, height: geo.size.height)
                                } else if phase.error != nil {
                                    Text("There was an error loading the image.")
                                } else {
                                    ProgressView()
                                }
                                
                            }

                            VStack(alignment: .leading) {
                                HStack{
                                    
                                    Text(movieResults.releaseDate ?? "No information")
                                        .padding(.trailing)
                                        
                                    Text("\(Image(systemName: "star.fill")) \(movieResults.voteAverage ?? 0.0)")
                                }
                                .foregroundColor(.gray)
                                .font(.subheadline)
                                .padding(.bottom)
                                
//                                Text("Genre: \(selectedGenses)")
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(.gray)
                                    .padding(.vertical)
                                
                                Text("Overview")
                                    .foregroundColor(CustomColor.detailColor)
                                    .font(.title.bold())
                                    .padding(.bottom, 5)

                                Text(movieResults.overview ?? "No information")
                                    .foregroundColor(CustomColor.textColor)
                                    .padding(.bottom)
                                
                                Rectangle()
                                    .frame(height: 2)
                                    .foregroundColor(.gray)
                                    .padding(.vertical)
                                
                                Text("Cast")
                                    .font(.title2)
                                    .foregroundColor(CustomColor.detailColor)
                                
                                CastView(movieResults: movieResults)
                                
                            }
                            .padding(.horizontal)
                        }
                        .padding(.bottom)
                    }
                }
                .navigationTitle(movieResults.title ?? "Unknown")
                .navigationBarTitleDisplayMode(.inline)
                .background(CustomColor.mainColor)
            }
    mutating func findGenre(_ ids: [Int])-> [String]{
        for id in ids{
            if id == 28{
                selectedGenses.insert("Action", at: 0)
            }
            if id == 12{
                selectedGenses.insert("Adventure", at: 0)
            }
            if id == 16{
                selectedGenses.insert("Animation", at: 0)
            }
            if id == 35{
                selectedGenses.insert("Comedy", at: 0)
            }
            if id == 80{
                selectedGenses.insert("Crime", at: 0)
            }
            if id == 99{
                selectedGenses.insert("Documentary", at: 0)
            }
            if id == 18{
                selectedGenses.insert("Drama", at: 0)
            }
            if id == 10751{
                selectedGenses.insert("Family", at: 0)
            }
            if id == 14{
                selectedGenses.insert("Fantasy", at: 0)
            }
            if id == 36{
                selectedGenses.insert("History", at: 0)
            }
            if id == 27{
                selectedGenses.insert("Horror", at: 0)
            }
            if id == 10402{
                selectedGenses.insert("Music", at: 0)
            }
            if id == 9648{
                selectedGenses.insert("Mystery", at: 0)
            }
            if id == 10749{
                selectedGenses.insert("Romance", at: 0)
            }
            if id == 878{
                selectedGenses.insert("Science Fiction", at: 0)
            }
            if id == 10770{
                selectedGenses.insert("TV Movie", at: 0)
            }
            if id == 53{
                selectedGenses.insert("Thriller", at: 0)
            }
            if id == 10752{
                selectedGenses.insert("War", at: 0)
            }
            if id == 37{
                selectedGenses.insert("Western", at: 0)
            } else {
                selectedGenses.insert("No info", at: 0)
            }
        }
    return selectedGenses
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var results = [Results]()
//    static var previews: some View {
//        DetailView(movieResults: results[0])
//    }
//}
