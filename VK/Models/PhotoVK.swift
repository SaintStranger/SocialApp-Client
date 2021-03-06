//
//  PhotoVK.swift
//  VK
//
//  Created by Антон Чечевичкин on 02.02.2021
//

import Foundation

struct PhotoVK: Codable {
    let id, albumID, ownerID: Int
    let sizes: [PhotoSize]
    let text: String
    let date: Int
    let likes: PhotoLikes
    let reposts: PhotoReposts

    enum CodingKeys: String, CodingKey {
        case id
        case albumID = "album_id"
        case ownerID = "owner_id"
        case sizes, text, date
        case likes, reposts
    }
}

struct PhotoReposts: Codable {
    let count: Int
}

struct PhotoLikes: Codable {
    let userLikes, count: Int

    enum CodingKeys: String, CodingKey {
        case userLikes = "user_likes"
        case count
    }
}

struct PhotoSize: Codable {
    let type: String
    let url: String
    let width, height: Int
}
