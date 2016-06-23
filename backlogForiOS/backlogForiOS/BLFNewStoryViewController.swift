//
//  BLFNewStoryViewController.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/23.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFNewStoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.view.backgroundColor = UIColor.whiteColor()
        // 右ボタンを作成する.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "RightBtn", style: .Plain, target: self, action: #selector(self.onClickRegistrationButton))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func onClickRegistrationButton()  {
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
