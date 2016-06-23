//
//  BLFTopListViewController.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/22.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFTopListBaseViewController: UIViewController {

    var topListBaseView: BLFTopListBaseView?
    
    override func loadView() {
        super.loadView()
        print(self.view.frame)
        topListBaseView = BLFTopListBaseView(frame: self.view.frame)
        self.view.addSubview(topListBaseView!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
