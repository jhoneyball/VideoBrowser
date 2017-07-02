

import Foundation
import VideoBrowser_DomainModels

struct VideoDetailViewModel {
    var videoItem: VideoItem

    init(videoItem: VideoItem) {
        self.videoItem = videoItem
    }
}
