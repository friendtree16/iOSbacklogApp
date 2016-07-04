//
//  BLFMainTextTableViewCell.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/07/02.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFMainTextTableViewCell: BLFBaseTableViewCell {

    @IBOutlet var inputData: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Override BaseTableViewCell
    override func getRowData() -> String? {
        if inputData.text?.characters.count == 0 {
            return nil
        }
        return self.inputData.text
    }
    
    class func getCellIdentifer() -> String {
        return "MainTextTableViewCell"
    }
    
    class func getNibName() -> String {
        return "BLFMainTextTableViewCell"
    }
    
    class func getHight() -> CGFloat {
        return 215
    }
    
}
