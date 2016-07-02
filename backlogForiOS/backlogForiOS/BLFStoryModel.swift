//
//  BLFStoryModel.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/24.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit
import RealmSwift

class BLFStoryModel: Object {
    dynamic var priority = 0
    dynamic var point = 0
    dynamic var title = ""
    dynamic var mainText = ""
    // primaryは外では設定しない
    dynamic var primary = 0
    
    override static func primaryKey() -> String? {
        return "primary"
    }
}