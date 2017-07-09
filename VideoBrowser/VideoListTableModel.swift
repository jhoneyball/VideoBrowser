

import UIKit
import VideoBrowser_DomainModels

struct VideoListTableModel {
    
    var items: [VideoItem]
    var count: Int {
        return items.count
    }
    
    init(_ items: [VideoItem]) {
        self.items = items
    }
    
}
