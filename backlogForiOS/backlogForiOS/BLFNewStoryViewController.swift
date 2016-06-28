//
//  BLFNewStoryViewController.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/23.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

/**
 * ストーリー新規登録画面
 */
class BLFNewStoryViewController: UIViewController {

    // MARK: - ViewControllerOverride
    
    override func loadView() {
        super.loadView()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // 右ボタンを作成する.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "RightBtn", style: .Plain, target: self, action: #selector(self.onClickRegistrationButton))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - PrivateMethod
    
    func onClickRegistrationButton()  {
        // 入力情報を取得して登録用オブジェクトを作成
        let regData = BLFStoryModel()
        
        regData.priority = 1
        regData.title = "テスト"
        regData.mainText = "うける"
        
        BLFRealmManager.sharedSingleton.registrationObject(regData)
        
        // 前の画面にpopする
        self.navigationController?.popViewControllerAnimated(true)
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
