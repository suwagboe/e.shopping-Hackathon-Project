//
//  NewsArticle_API_Client.swift
//  e.shopping-Hackathon
//
//  Created by Gregory Keeley on 4/21/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation

struct NYTTopStoriesAPIClient {
  static func fetchCompanyArticles(for search: String, completion: @escaping (Result<[Article], AppError>) -> ()) {
    let articleSearchEndpoint = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=\(search)&api-key=\(Config.apiKey)"
    guard let url = URL(string: articleSearchEndpoint) else {
      completion(.failure(.badURL(articleSearchEndpoint)))
      return
    }
    let request = URLRequest(url: url)
    NetworkHelper.shared.performDataTask(with: request) { (result) in
      switch result {
      case .failure(let appError):
        completion(.failure(.networkClientError(appError)))
      case .success(let data):
        do {
          let topStories = try JSONDecoder().decode(TopStories.self, from: data)
          completion(.success(topStories.results))
        } catch {
          completion(.failure(.decodingError(error)))
        }
      }
    }
  }
}
