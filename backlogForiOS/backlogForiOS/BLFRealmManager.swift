//
//  BLFRealmManager.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/23.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFRealmManager: NSObject {
    // 保存されているレコード数を取得
    class func getRecordCount() -> Int {
        return 1
    }
    
    // 保存している内容を返却
    // TODO:返すオブジェクトを考える
    class func getRecodeObject() -> NSObject {
        return NSObject()
    }
    
    // ストーリーを登録
    // TODO:引数のオブジェクトの中身を考える
    class func registrationObject(regObject: NSObject?) -> Bool {
        return true
    }
}
