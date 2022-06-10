//
//  CommonResponse.swift
//  VK
//
//  Created by Антон Чечевичкин on 27.01.2021
//

import Foundation

struct CommonResponse<T: Decodable>: Decodable {
    var response: ResponseData<T>
}

struct ResponseData<T: Decodable>: Decodable {
    var count: Int
    var items: [T]
}
