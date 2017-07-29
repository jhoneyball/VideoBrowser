

import UIKit
import VideoBrowserDomainModels

struct VideoListTableModel {
    
    var videoItemsStore: VideoItemStore
    var items: [VideoItem] {return videoItemsStore.videoItems}
    var count: Int {
        return items.count
    }
    
    init(_ videoItemsStore: VideoItemStore) {
        self.videoItemsStore = videoItemsStore
    }
    
}
