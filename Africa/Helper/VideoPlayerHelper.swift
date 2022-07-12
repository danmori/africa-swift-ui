//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Dan Mori on 12/07/22.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(fileName: String, fileFormat: String) -> AVPlayer {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        return AVPlayer()
    }
    
    videoPlayer = AVPlayer(url: url)
    videoPlayer?.play()
    return videoPlayer!
}
