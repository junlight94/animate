//
//  ViewController.swift
//  animate
//
//  Created by 이준영 on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var animateView: UIView!
    @IBOutlet var uiView: UIView!
    
    var x:Double = 0
    var y:Double = 0
    var screenwidth: CGFloat = 0
    var screenheight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenwidth = uiView.frame.width - animateView.frame.width
        screenheight = uiView.frame.height - animateView.frame.height
        self.animateView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }

    @IBAction func button(_ sender: Any) {
        
        UIView.animate(withDuration: 1,delay:0 , animations: {
            //백그라운드 색상 변경
            self.animateView.backgroundColor = UIColor.black
            
            //뷰 없애기
            self.animateView.alpha = 0
            
            //크기변경
            self.animateView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            
            //우측으로 현재 view의 넚이만큼 이동
            self.animateView.transform = CGAffineTransform(translationX: self.animateView.bounds.width, y: 0)
            
        })
    }
}

