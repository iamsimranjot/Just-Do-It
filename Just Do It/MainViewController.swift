//
//  MainViewController.swift
//  Just Do It
//
//  Created by SimranJot Singh on 07/12/16.
//  Copyright © 2016 SimranJot Singh. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    //MARK: Properties & Outlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet var checkView: UIView!
    var viewCount : Int = 0;
    var rows: NSMutableArray = []
    var lastAddedRow: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //MARK: Add Button Action
    
    @IBAction func addButtonAction(_ sender: Any) {
        
        rows.add(makeCheckView())
        contentView.addSubview(rows[rows.count - 1] as! UIView)
        setupCheckView(inView: rows[rows.count - 1] as! UIView)
        lastAddedRow = rows[rows.count - 1] as! UIView
    }
    
    private func makeCheckView() -> UIView {
        
        let outView = checkView!
        return outView
    }
    
    //Setup CheckView
    private func setupCheckView(inView: UIView) {
        inView.snp.makeConstraints { (make) in
            
            if lastAddedRow != nil {
                make.topMargin.equalTo(20 * viewCount)
            } else {
                make.top.equalToSuperview().offset(40)
            }
            
            make.left.equalTo(10)
            make.right.equalTo(-10)
            viewCount += 1
        }
    }
}
