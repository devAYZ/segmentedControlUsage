//
//  SmilesVC.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

class SmilesVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var testView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .blue
        label?.text = "Test Here"
        
        /// Add tap recognize to view
        let tap = UITapGestureRecognizer(target: self, action:  #selector(handleViewTap))
        tap.numberOfTapsRequired = 1
        testView?.addGestureRecognizer(tap)
        testView?.isUserInteractionEnabled = true
    }
    
    
    @objc func handleViewTap() {
        debugPrint("devAYZ, Yesss")
    }
}
