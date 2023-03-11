//
//  Article.swift
//  NoticiasMVVM
//
//  Created by Jose David Bustos H on 04-11-20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
