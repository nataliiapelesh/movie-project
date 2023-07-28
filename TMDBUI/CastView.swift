//
//  CastView.swift
//  TMDBUI
//
//  Created by Наталья Пелеш on 25.03.2023.
//

import SwiftUI
extension Image{
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 68)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .strokeBorder(.white, lineWidth: 1)
            )
    }
    
    func iconModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 68)
            .overlay(
                Circle()
                    .strokeBorder(.white, lineWidth: 1)
            )
            .foregroundColor(.gray)
            .opacity(0.5)
    }
    
}

struct CastView: View {
    
    @State private var castResults = [CastResults]()
    @State private var crewResults = [CastResults]()
    let movieResults: Results
    
    let rows = [
            GridItem(.fixed(150))
           
        ]
    
    var body: some View {
        VStack(alignment: .leading){
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: rows, alignment: .center) {
                    ForEach(castResults) { result in
                        VStack{
                            AsyncImage(url: URL(string: Constants.Network.defaultImageUrl + (result.profilePath ?? ""))) { phase in
                                switch phase {
                                case .success(let image):
                                    image.imageModifier()
                                       
                                case .failure(_):
                                    Image(systemName: "photo.circle.fill").iconModifier()
                                        
                                case .empty:
                                    ProgressView()
                                @unknown default:
                                    ProgressView()
                                }
                                
                            }
                            
                            VStack{
                                Text(result.name ?? "No Information")
                                Text("as")
                                Text(result.character ?? "No Information")
                            }
                            .foregroundColor(.white)
                            .font(.caption)
                        }
                    }
                }
                .task {
                    await loadCast(id: movieResults.id ?? 603692 )
                }
            }
            Text("Crew")
                .font(.title2)
                .foregroundColor(CustomColor.detailColor)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: rows, alignment: .center) {
                    ForEach(crewResults) { result in
                        VStack{
                            AsyncImage(url: URL(string: Constants.Network.defaultImageUrl + (result.profilePath ?? ""))) { phase in
                                switch phase {
                                case .success(let image):
                                    image.imageModifier()
                                    
                                case .failure(_):
                                    Image(systemName: "photo.circle.fill").iconModifier()
                                       
                                case .empty:
                                    ProgressView()
                                @unknown default:
                                    ProgressView()
                                }
//
                            }
                            
                            VStack{
                                Text(result.name ?? "No Information")
                                Text("as")
                                Text(result.job ?? "No Information")
                            }
                            .foregroundColor(.white)
                            .font(.caption)
                        }
                    }
                }
                .task {
                    await loadCast(id: movieResults.id ?? 603692 )
                }
            }
        }
    }
    //https://api.themoviedb.org/3/movie/603692/credits?api_key=2bdbbce0620810b5f8b406bdd0a766c5&language=en-US
    func loadCast(id: Int) async {
        guard let url = URL(string: "\(Constants.Network.baseURL)movie/\(id)/credits?api_key=\(Constants.Network.apiKey)&language=en-US") else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(CastResponse.self, from: data) {
                castResults = decodedResponse.cast ?? []
                crewResults = decodedResponse.crew ?? []
            }
        } catch {
            print("Invalid data")
        }
        
        
    }
}

//struct CastView_Previews: PreviewProvider {
//    static var previews: some View {
//        CastView(movieResults: <#Results#>)
//    }
//}
