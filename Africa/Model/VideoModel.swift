//
//  VideoModel.swift
//  Africa
//
//  Created by Dan Mori on 12/07/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
}

extension Video {
    var thumbnail: String {
        "video-\(id)"
    }
}
