//
//  AVPlayer.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 17.01.2023.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
