//
//  ScrollViewController.swift
//  swf-ScrollView-demo
//
//  Created by S.Emoto on 2018/09/25.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let dataSource = TableViewProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = dataSource
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
