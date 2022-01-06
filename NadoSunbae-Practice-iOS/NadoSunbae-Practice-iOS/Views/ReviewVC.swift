//
//  ReviewVC.swift
//  NadoSunbae-Practice-iOS
//
//  Created by EUNJU on 2022/01/06.
//

import UIKit

class ReviewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func showHalfView() {
        let slideVC = OverlayView()
        slideVC.modalPresentationStyle = .custom
        slideVC.transitioningDelegate = self
        self.present(slideVC, animated: true, completion: nil)
    }
    
    @IBAction func onButton(_ sender: Any) {
        showHalfView()
    }
    
}

extension ReviewVC: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        PresentationController(presentedViewController: presented, presenting: presenting)
    }
}
