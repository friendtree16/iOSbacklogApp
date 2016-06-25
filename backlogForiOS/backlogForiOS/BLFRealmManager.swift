//
//  BLFRealmManager.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/23.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit
import RealmSwift

class BLFRealmManager: NSObject {
    let realm: Realm
    private override init() {
        realm = try! Realm()
    }
        
    static let sharedSingleton = BLFRealmManager()
    
    // 保存されているレコード数を取得
    func getRecordCount() -> Int {
        let storyModel = realm.objects(BLFStoryModel)
        return storyModel.count
    }
    
    // 保存している内容を返却
    func getRecodeObject() -> Array<BLFStoryModel> {
        
        let storyModel = realm.objects(BLFStoryModel)
        
        var resultArray: Array<BLFStoryModel> = []
        for row in storyModel {
            let addRow = BLFStoryModel()
            addRow.primary = row.primary
            addRow.mainText = row.mainText
            addRow.title = row.title
            addRow.priority = row.priority
            resultArray.append(addRow)
        }
        
        return resultArray
    }
    
    // ストーリーを登録
    func registrationObject(regObject: BLFStoryModel!) -> Bool {
        regObject.primary = self.getRecordCount()
        try! realm.write{
            realm.add(regObject!)
        }
    return true
    }
}
