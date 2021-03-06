//
//  NewsRealm.swift
//  VK
//
//  Created by Антон Чечевичкин on 24.02.2021
//

import Foundation
import RealmSwift

class NewsRealm: Object {
    
    @objc dynamic var text = ""
    @objc dynamic var likes = 0
    @objc dynamic var userLikes = 0
    @objc dynamic var views = 0
    @objc dynamic var comments = 0
    @objc dynamic var reposts = 0
    @objc dynamic var date = 0
    @objc dynamic var authorImagePath = ""
    @objc dynamic var authorName = ""
    
    override static func primaryKey() -> String? {
        return "date"
    }
    
    var photos = List<String>()
    
    func toModel() -> PostVK {
        
        var photosToModel = [String]()
        photos.forEach { photosToModel.append($0) }
    
        return PostVK(text: text, likes: likes, userLikes: userLikes, views: views, comments: comments, reposts: reposts, date: date, authorImagePath: authorImagePath, authorName: authorName, photos: photosToModel)
    }
}
