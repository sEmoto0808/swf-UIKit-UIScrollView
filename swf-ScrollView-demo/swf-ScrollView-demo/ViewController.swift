//
//  ViewController.swift
//  swf-ScrollView-demo
//
//  Created by S.Emoto on 2018/09/17.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabbarScrollView: UIScrollView!
    @IBOutlet weak var contentScrollView: UIScrollView!
    @IBOutlet weak var tabBar: UITabBar!
    
    private enum ScrollTag: Int {
        case tabBar = 0
        case content = 1
    }
    
    let SCROLL_TABBAR = 0
    let SCROLL_CONTENT = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        if scrollView.tag == SCROLL_CONTENT {
            tabBar.selectedItem?.tag += 1
            
        }
    }
}

extension ViewController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {}
}
