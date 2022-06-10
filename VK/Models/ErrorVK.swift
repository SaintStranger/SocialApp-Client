//
//  ErrorVK.swift
//  VK
//
//  Created by Антон Чечевичкин on 27.02.2021
//

import Foundation

struct ResponseErrorVK: Codable {
    let error: ErrorVK
}

struct ErrorVK: Codable {
    let errorCode: Int
    let errorMessage: String
    let requestParams: [RequestParam]

    enum CodingKeys: String, CodingKey {
        case errorCode = "error_code"
        case errorMessage = "error_msg"
        case requestParams = "request_params"
    }
}

struct RequestParam: Codable {
    let key, value: String
}
