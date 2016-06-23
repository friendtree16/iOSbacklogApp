//
//  BLFTopListView.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/22.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFTopListBaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blueColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
