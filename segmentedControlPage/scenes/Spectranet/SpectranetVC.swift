//
//  SpectranetVC.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

final class SpectranetVC: UIViewController {

    // MARK: IOButlets
    @IBOutlet weak var label: UILabel!
    
    // MARK: Properties
    public var index: Int?
    
    // MARK: Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: Setup method
    private func setupView() {
        view.backgroundColor = .lightGray
        label?.text = "Test Here 2"
    }    
}
