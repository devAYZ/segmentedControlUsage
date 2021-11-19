//
//  SpectranetVC.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

class SpectranetVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    public var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .lightGray
        label?.text = "Test Here"
    }    
}
