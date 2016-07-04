//
//  BLFStoryView.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/28.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFStoryView: UIView,UITableViewDelegate,UITableViewDataSource {

    var storyTableView:UITableView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        storyTableView = UITableView(frame: frame)
        storyTableView!.dataSource = self
        storyTableView!.delegate = self
        
        storyTableView!.registerNib(UINib(nibName: BLFPriorityTableViewCell.getNibName(),bundle: nil), forCellReuseIdentifier: BLFPriorityTableViewCell.getCellIdentifer())
        storyTableView!.registerNib(UINib(nibName: BLFStoryTitleTableViewCell.getNibName(),bundle: nil), forCellReuseIdentifier: BLFStoryTitleTableViewCell.getCellIdentifer())
        storyTableView!.registerNib(UINib(nibName: BLFPointTableViewCell.getNibName(),bundle: nil), forCellReuseIdentifier: BLFPointTableViewCell.getCellIdentifer())
        storyTableView!.registerNib(UINib(nibName: BLFMainTextTableViewCell.getNibName(),bundle: nil), forCellReuseIdentifier: BLFMainTextTableViewCell.getCellIdentifer())
        
        addSubview(storyTableView!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - tableViewDelegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 今は4つのセルのみ想定
        return 4
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return BLFBaseTableViewCell.getCellHightWithIndex(indexPath)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(BLFBaseTableViewCell.getCellIdentiferWithIndex(indexPath)) as? BLFBaseTableViewCell
        
        return cell!
    }
    
    func getInputData() -> BLFStoryModel? {
        let storyModel = BLFStoryModel()
        var cells:Array<BLFBaseTableViewCell> = []
        
        for sectionCount in 0..<storyTableView!.numberOfSections {
            for rowCount in 0..<storyTableView!.numberOfRowsInSection(sectionCount) {
                cells.append(storyTableView!.cellForRowAtIndexPath(NSIndexPath(forRow: rowCount,inSection: sectionCount))! as! BLFBaseTableViewCell)
            }
        }
        
        if let tmpPriority:String = cells[0].getRowData(){
            if let intPriority = Int(tmpPriority) {
                storyModel.priority = intPriority
            } else {
                return nil
            }
            
        } else {
            return nil
        }
        if let tmpPoint:String = cells[1].getRowData() {
            if let intPoint = Int(tmpPoint) {
                storyModel.point = intPoint
            } else {
                return nil
            }
            
        } else {
            return nil
        }
        
        if let tmpTitle:String = cells[2].getRowData() {
            storyModel.title = tmpTitle
        } else {
            return nil
        }
        
        if let tmpMainText:String = cells[3].getRowData() {
            storyModel.mainText = tmpMainText
        } else {
            return nil
        }
        
        
        return storyModel
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
