//
//  UltimaViewController.swift
//  NirvanaMock
//
//  Created by Olivier Dupont-Therrien on 2018-07-17.
//  Copyright © 2018 BLIQc. All rights reserved.
//

import Cocoa

class UltimaViewController: NSViewController {
    
    
    @IBOutlet weak var segmentedControl: NSSegmentedControl! {
        didSet {
            segmentedControl.selectedSegment = 0
            onSegmentedControlClicked(segmentedControl)
        }
    }
    @IBOutlet weak var acquisitionView: NSView!
    @IBOutlet weak var analysisView: NSView!
    @IBOutlet weak var button: NSButton!
    @IBOutlet weak var ouchLabel: NSTextField! {
        didSet {
            ouchLabel.isHidden = true
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(nibName nibNameOrNil: NSNib.Name?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonClicked(_ sender: Any) {
        ouchLabel.isHidden = false
    }
    
    @IBAction func onSegmentedControlClicked(_ sender: Any) {
        let selectedTabIndex = segmentedControl.indexOfSelectedItem
        if selectedTabIndex == 0 {
            acquisitionView.isHidden = false
            analysisView.isHidden = true
        } else {
            acquisitionView.isHidden = true
            analysisView.isHidden = false
        }
    }
}
