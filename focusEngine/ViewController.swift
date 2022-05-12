//
//  ViewController.swift
//  focusEngine
//
//  Created by Gustavo da Silva Braghin on 11/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }
    
    override func shouldUpdateFocus(in context: UIFocusUpdateContext) -> Bool {
        if context.nextFocusedView == leftTop || context.nextFocusedView == leftBot {
            rightView.backgroundColor = .red
            leftView.backgroundColor = .clear
        }else{
            rightView.backgroundColor = .clear
            leftView.backgroundColor = .red
        }
        return true
    }
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        super.didUpdateFocus(in: context, with: coordinator)
        context.previouslyFocusedView?.backgroundColor = .blue
        context.nextFocusedView?.backgroundColor = .yellow
    }

    @IBOutlet var leftTop: UIButton!
    @IBOutlet var leftBot: UIButton!
    @IBOutlet var rightTop: UIButton!
    @IBOutlet var rightBot: UIButton!
    
    @IBOutlet var leftView: UIView!
    @IBOutlet var rightView: UIView!
    
    @IBAction func didPressLeftTop(_ sender: Any) {
        leftBot.backgroundColor = .green
        leftTop.backgroundColor = .green
        rightBot.backgroundColor = .green
        rightTop.backgroundColor = .green
    }
    
    @IBAction func didPressLeftBot(_ sender: Any) {
        leftBot.backgroundColor = .black
        leftTop.backgroundColor = .black
        rightBot.backgroundColor = .black
        rightTop.backgroundColor = .black
    }
    
    @IBAction func didPressRightTop(_ sender: Any) {
        leftBot.backgroundColor = .cyan
        leftTop.backgroundColor = .cyan
        rightBot.backgroundColor = .cyan
        rightTop.backgroundColor = .cyan
    }
    
    @IBAction func didPressRightBot(_ sender: Any) {
        leftBot.backgroundColor = .gray
        leftTop.backgroundColor = .gray
        rightBot.backgroundColor = .gray
        rightTop.backgroundColor = .gray
    }
}

