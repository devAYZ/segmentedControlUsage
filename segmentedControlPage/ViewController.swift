//
//  ViewController.swift
//  segmentedControlPage
//
//  Created by Ayokunle Pro on 11/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    
    let spectranet = SpectranetVC(nibName: "SpectranetVC", bundle: Bundle(for: SpectranetVC.self))
    let smiles = SmilesVC(nibName: "SmilesVC", bundle: Bundle(for: SmilesVC.self))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segControl.addTarget(self, action: #selector(handleSegControl(segment:)), for: .valueChanged)
        setupView()
    }
    
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

