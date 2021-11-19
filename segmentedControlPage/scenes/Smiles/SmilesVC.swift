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
        debugPrint("devAYZ, Yesss")
    }
    
    private func setupView() {
        view.backgroundColor = .blue
//        printBtn.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        label?.text = "Test Here"
        
        
        let tap = UITapGestureRecognizer(target: self, action:  #selector(handleViewTap))
        tap.numberOfTapsRequired = 1
        testView?.addGestureRecognizer(tap)
        testView?.isUserInteractionEnabled = true
    }
    
    
    @objc func handleViewTap() {
        debugPrint("devAYZ, Yesss")
    }
}
