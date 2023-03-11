//
//  Article.swift
//  NoticiasMVVM
//
//  Created by Jose David Bustos H on 04-11-20.
//  Copyright © 2020 Jose David Bustos H. All rights reserved.
//

import Foundation

// MARK: - Empty
struct ArticleList : Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let source: Source
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    let content: String?
}

// MARK: - Source
struct Source: Decodable {
    let id: String?
    let name: String
}
