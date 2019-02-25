//
//  AppData.swift
//  JSONWithTableView
//
//  Created by Chintalapudi Vinod on 6/6/18.
//  Copyright © 2018 brn. All rights reserved.
//

import Foundation
struct appData : Decodable{
    let feed:feedData
}
struct feedData:Decodable {
    let title:String
    let id:String
    let results:[resultData]
}
struct resultData:Decodable {
    let artistName:String
    let name:String
    let artworkUrl100:String
}
