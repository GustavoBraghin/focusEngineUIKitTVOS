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
}

