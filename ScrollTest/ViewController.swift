//
//  ViewController.swift
//  ScrollTest
//
//  Created by moonkyoochoi on 2020/10/07.
//  Copyright © 2020 CoreTechnologyDevelopmentTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.scrollview.delegate = self
        
        self.navigationItem.title = "hiroor"
//        self.navigationController!.hidesBarsOnTap = true
//        navigationController!.hidesBarsOnSwipe = true
    }

    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {

        if(velocity.y>0) {
            //Code will work without the animation block.I am using animation block incase if you want to set any delay to it.
            UIView.animate(withDuration: 0.5, delay: 0, options: UIView.AnimationOptions(), animations: {
                self.navigationController?.setNavigationBarHidden(true, animated: true)
                self.navigationController?.setToolbarHidden(true, animated: true)
                print("Hide")
            }, completion: nil)

        } else {
            UIView.animate(withDuration: 0.5, delay: 0, options: UIView.AnimationOptions(), animations: {
                self.navigationController?.setNavigationBarHidden(false, animated: true)
                self.navigationController?.setToolbarHidden(false, animated: true)
                print("Unhide")
            }, completion: nil)
          }
       }
}

