//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Dan Mori on 11/07/22.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> [T] {
        guard let url = self.url(forResource: file, withExtension: nil), let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate or load \(file) in bundle.")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([T].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        return loaded
    }
}
