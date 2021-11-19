//
//  ViewController.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: IOButlets
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    // MARK: Properties
    lazy var spectranet: SpectranetVC = {
        let view = SpectranetVC(nibName: "SpectranetVC", bundle: Bundle(for: SpectranetVC.self))
        return view
    }()
    let smiles = SmilesVC(nibName: "SmilesVC", bundle: Bundle(for: SmilesVC.self))
    
    // MARK: Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        segControl.addTarget(self, action: #selector(handleSegControl(segment:)), for: .valueChanged)
        setupView()
    }
    
    // MARK: Setup method
    private func setupView() {
        segControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.white,
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: .light)],for: .selected)
        segControl.setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: UIColor.purple
            ],for: .normal)
        segControl.layer.borderWidth = 1
        segControl.layer.borderColor = UIColor.purple.cgColor
        //UIColor(red:128, green:0, blue:128, alpha: 1).cgColor
            
        addChild(spectranet)
        addChild(smiles)
        
        spectranet.view.frame = containerView.bounds
        smiles.view.frame = containerView.bounds
        
        containerView.addSubview(smiles.view)
        containerView.addSubview(spectranet.view)
        
        spectranet.didMove(toParent: self)
        smiles.didMove(toParent: self)
    }
    
    // MARK: Handle switching of Segments
    @objc func handleSegControl(segment: UISegmentedControl) {
        spectranet.index = segment.selectedSegmentIndex
        smiles.index = segment.selectedSegmentIndex
        switch segment.selectedSegmentIndex {
        case 0:
            containerView.bringSubviewToFront(spectranet.view)
            
        default:
            containerView.bringSubviewToFront(smiles.view)
        }
    }
}

