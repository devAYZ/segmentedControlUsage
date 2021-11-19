//
//  SmilesVC.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

final class SmilesVC: UIViewController {

    // MARK: IOButlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var testView: UIView!
    
    // MARK: Properties
    public var index: Int?
    
    // MARK: Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: Setup method
    private func setupView() {
        view.backgroundColor = .blue
        label?.text = "Test Here"
        
        /// Add tap recognize to view
        let tap = UITapGestureRecognizer(target: self, action:  #selector(handleViewTap))
        tap.numberOfTapsRequired = 1
        testView?.addGestureRecognizer(tap)
        testView?.isUserInteractionEnabled = true
    }
    
    // MARK: Handle Tap Action on View
    @objc func handleViewTap() {
        debugPrint("devAYZ, Yesss")
        debugPrint(index ?? 0)
    }
}
