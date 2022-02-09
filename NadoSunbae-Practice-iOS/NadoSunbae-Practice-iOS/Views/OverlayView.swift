//
//  OverlayView.swift
//  NadoSunbae-Practice-iOS
//
//  Created by EUNJU on 2022/01/06.
//

import UIKit

class OverlayView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        if !hasSetPointOrigin {
            hasSetPointOrigin = true
            pointOrigin = self.view.frame.origin
        }
    }
    @IBAction func didTapDismissBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
