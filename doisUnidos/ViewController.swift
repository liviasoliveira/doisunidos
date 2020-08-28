//
//  ViewController.swift
//  doisUnidos
//
//  Created by Lívia Silva Oliveira on 28/08/20.
//  Copyright © 2020 Lívia Silva Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.view = MainView(frame: UIScreen.main.bounds)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

class MainView: UIView{
    override init(frame: CGRect){
        super .init(frame:frame)
        self.backgroundColor = .white
        setupConstraints()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(contentView)
        //self.addSubview(startButton)
        
    }
    
    func setupConstraints(){
        self.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let contentView: UIView = {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.layer.borderWidth = 1.0
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
//    let startButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Simbora!", for: .normal)
//        return button
//    }
    
    
}
