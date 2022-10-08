//
//  RemoteFeedLoader.swift
//  Essential
//
//  Created by Pradeep Lobo on 2022-10-07.
//

import Foundation

protocol HTTPClient {
    func get(from url: URL)
}

class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
    }
}


