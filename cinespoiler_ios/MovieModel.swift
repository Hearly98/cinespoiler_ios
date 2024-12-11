//
//  MovieModel.swift
//  cinespoiler_ios
//
//  Created by MACSTFPE006 on 11/12/24.
//

import Foundation
import FirebaseFirestoreSwift

struct MovieModel: Codable{
    var id: String?
    let movieDescription: String?
    let movieImg: String?
    let movieName: String?
    let moviePrice: Int32?
    
    init(id: String? = nil, movieDescription: String? = nil, movieImg: String? = nil,
         movieName: String? = nil, moviePrice: Int32? = nil){
        self.id = id
        self.movieDescription = movieDescription
        self.movieImg = movieImg
        self.movieName = movieName
        self.moviePrice = moviePrice
    }
    
}
