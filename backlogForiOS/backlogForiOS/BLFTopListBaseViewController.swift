//
//  BLFTopListViewController.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/22.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit
import RealmSwift

class BLFTopListBaseViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var topListBaseTableView: UITableView?
    var recodeData: Array<BLFStoryModel> = []
    var realmNotification: NotificationToken?
    
    
    // MARK: - ViewControllerOverride
    
    override func loadView() {
        super.loadView()
        
        recodeData = BLFRealmManager.sharedSingleton.getRecodeObject()
        // テーブルビュー作成
        topListBaseTableView = UITableView(frame: self.view.frame)
        topListBaseTableView?.delegate = self
        topListBaseTableView?.dataSource = self
        self.view.addSubview(topListBaseTableView!)
        
        // Cell名の登録をおこなう.
        self.topListBaseTableView!.registerNib(UINib(nibName: "BLFStoryRecodeCell", bundle: nil), forCellReuseIdentifier: "Cell")
        
        // Realmが更新されたときのNotificationを設定
        self.realmNotification = BLFRealmManager.sharedSingleton.realm.addNotificationBlock({ (notification, realm) in
            // 更新されたデータを取得してテーブルを更新
            self.recodeData = BLFRealmManager.sharedSingleton.getRecodeObject()
            self.topListBaseTableView?.reloadData()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let addNewStoryBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: #selector(self.onClickAddNewStoryBarButton))
        
        self.navigationItem.setRightBarButtonItem(addNewStoryBarButton, animated: true)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - TableViewDelegate
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BLFRealmManager.sharedSingleton.getRecordCount()
    }
    
    // セルの内容を変更
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: BLFStoryRecodeCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! BLFStoryRecodeCell
        
        cell.updateCell(recodeData, index: indexPath)
        return cell
    }
    
    // MARK: - PrivateMethod
    
    // addボタンがタップされた時
    func onClickAddNewStoryBarButton()  {
        self.navigationController?.pushViewController(BLFNewStoryViewController(), animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
