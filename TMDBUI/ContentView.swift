//
//  ContentView.swift
//  TMDBUI
//
//  Created by Евгений Скипор on 02.03.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var results = [Results]()
   
    
    let columns = [
        GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(results) { result in
                        NavigationLink{
                            DetailView(movieResults: result)
                        } label: {
                            VStack(alignment: .center){
                                //                    GeometryReader { geo in
                                AsyncImage(url: URL(string: Constants.Network.defaultImageUrl + (result.backdropPath ?? "/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg") )) { phase in
                                    if let image = phase.image {
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 130, height: 100)
                                            
                                            .padding()
                                        //                                    .frame(width: geo.size.width * 1)
                                        //                                    .frame(width: geo.size.width, height: geo.size.height)
                                    } else if phase.error != nil {
                                        Text("There was an error loading the image.")
                                    } else {
                                        ProgressView()
                                    }
                                    
                                }
                                //                    }
                                
                                VStack {
                                    Text(result.title ?? "Unknown")
                                        .font(.headline)
                                        .foregroundColor(CustomColor.textColor)
                                    
                                    Text(String (result.voteAverage ?? 0.0))
                                        .font(.subheadline)
                                    
//                                    Button("\(Image(systemName: "play.fill")) Trailer"){
//                                        
//                                    }
                                    
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(CustomColor.secondaryColor)
                            }
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(CustomColor.secondaryColor)
                            )
                        }
                        
                    }
                    
                }
                .padding([.horizontal, .bottom])
                .task {
                    await loadData()
                }
            
            }
            .navigationTitle("The Movie Database")
            .background(CustomColor.mainColor)
        }
        
    }
    
    func loadData() async {
        guard let url = URL(string: "\(Constants.Network.baseURL)trending/movie/week?api_key=\(Constants.Network.apiKey)") else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                results = decodedResponse.results ?? []
            }
        } catch {
            print("Invalid data")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
