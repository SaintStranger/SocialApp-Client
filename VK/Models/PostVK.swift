//
//  PostVK.swift
//  VK
//
//  Created by Антон Чечевичкин on 23.02.2021
//

import Foundation

struct PostVK {
    
    //TODO: (id, ownerId, fromId) -> enum PostType { case news , case wall }
    
    var id: Int?
    var ownerId: Int?
    var fromId: Int?
    var text: String
    var likes: Int
    var userLikes: Int
    var views: Int
    var comments: Int
    var reposts: Int
    var date: Int
    var authorImagePath: String
    var authorName: String
    var photos: [String]
}
