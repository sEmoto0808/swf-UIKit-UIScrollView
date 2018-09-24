//
//  TableViewProvider.swift
//  swf-ScrollView-demo
//
//  Created by S.Emoto on 2018/09/25.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

class TableViewProvider: NSObject {

    let testData = ["4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6",
                    "4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6",
                    "4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6",
                    "4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6","4", "5", "6"]
}

extension TableViewProvider: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for: indexPath)
        
        cell.textLabel?.text = testData[indexPath.row]
        
        return cell
    }
}
