//
//  ContainerVC.swift
//  DoggZam!
//
//  Created by McKinney family  on 1/12/19.
//  Copyright © 2019 FasTek Technologies. All rights reserved.
//

import Foundation
/*
import UIKit
import QuartzCore

enum SlideOutState {
    case collapsed
    case leftPanelExpanded
    
}

enum ShowWhichVC {
    case homeVC
}
var showVC: ShowWhichVC = .homeVC

class ContainerVC: UIViewController {
    
    var tap: UITapGestureRecognizer!
    
    var centerController: UIViewController!
    var leftVC: DoggZamVC!
    var homeVC: HomeVC!
    var currentState: SlideOutState = .collapsed {
        didSet {
            let shouldShowShadow = (currentState != .collapsed)
            
            shouldShowShadowForCenterViewController(shouldShowShadow)
        }
    }
    var isHidden = false
    let centerPanelExpandedOffset: CGFloat = 160
    
    // var delegate: CenterVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initCenter(screen: showVC)
        
        // Do any additional setup after loading the view.
    }
    
    
    func initCenter(screen: ShowWhichVC) {
        var presentingController: UIViewController
        
        showVC = screen
        
        if homeVC == nil {
            homeVC = UIStoryboard.homeVC()
            homeVC.delegate = self
            
        }
        presentingController = homeVC
        
        if let con = centerController {
            con.view.removeFromSuperview()
            con.removeFromParent()
        }
        centerController = presentingController
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return UIStatusBarAnimation.slide
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return isHidden
    }
    
}







extension ContainerVC: CenterVCDelegate {
    func toggleLeftPanel() {
        let notAlreadyExpanded = (currentState != .leftPanelExpanded)
        if notAlreadyExpanded {
            addLeftPanelViewController()
            
        }
        animateLeftPanel(shouldExpand: notAlreadyExpanded)
    }
    
    func addLeftPanelViewController() {
        if leftVC == nil {
            leftVC = UIStoryboard.leftViewController()
            addChildSidePanelViewController(leftVC!)
        }
    }
    @objc func animateLeftPanel(shouldExpand: Bool) {
        if shouldExpand {
            isHidden = !isHidden
            animateStatusBar()
            
            setupWhiteCoverView()
            currentState = .leftPanelExpanded
            animateCenterPanelXPosition(targetPosition: centerController.view.frame.width - centerPanelExpandedOffset)
            
        } else {
            isHidden = !isHidden
            animateStatusBar()
            
            hideWhiteCoverView()
            
            animateCenterPanelXPosition(targetPosition: 0) { (finished) in
                if finished == true {
                    self.currentState = .collapsed
                    self.leftVC = nil
                    
                }
            }
            
            
        }
    }
    
    func setupWhiteCoverView() {
        let whiteCoverView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        whiteCoverView.alpha = 0.0
        whiteCoverView.backgroundColor = UIColor.white
        whiteCoverView.tag = 25
        
        self.centerController.view.addSubview(whiteCoverView)
        UIView.animate(withDuration: 0.2) {
            whiteCoverView.alpha = 0.75
        }
        tap = UITapGestureRecognizer(target: self, action: #selector(animateLeftPanel(shouldExpand:)))
        tap.numberOfTapsRequired = 1
        
        self.centerController.view.addGestureRecognizer(tap)
    }
    
    func hideWhiteCoverView() {
        centerController.view.removeGestureRecognizer(tap)
        for subview in self.centerController.view.subviews {
            if subview.tag == 25 {
                UIView.animate(withDuration: 0.2, animations: {
                    subview.alpha = 0.0
                }) { (finished) in
                    subview.removeFromSuperview()
                }
            }
        }
    }
    
    func shouldShowShadowForCenterViewController(_ status: Bool) {
        if true {
            centerController.view.layer.shadowOpacity = 0.6
        } else {
            centerController.view.layer.shadowOpacity = 0.0
        }
    }
    
    
    func animateCenterPanelXPosition(targetPosition: CGFloat, completion: ((Bool)-> Void)! = nil) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.centerController.view.frame.origin.x = targetPosition
        }, completion: completion)
    }
    
    func animateStatusBar() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
        })
        
    }
    
    
    
    func addChildSidePanelViewController(_ sidePanelController: DoggZamVC) {
        view.insertSubview(sidePanelController.view, at: 0)
        addChildViewController(sidePanelController)
        sidePanelController.didMove(toParentViewController: self)
    }
    
}

private extension UIStoryboard {
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    class func leftViewController()-> DoggZamVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "DoggZamVC") as? DoggZamVC
    }
    
    class func homeVC()-> HomeVC? {
        return mainStoryboard().instantiateViewController(withIdentifier: "HomeVC") as? HomeVC
        
    }
    
}

 */

