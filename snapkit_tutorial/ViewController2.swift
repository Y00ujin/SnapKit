//
//  ViewController2.swift
//  snapkit_tutorial
//
//  Created by 김유진 on 2021/04/23.
//

import UIKit
import SnapKit

class ViewController2: UIViewController{
    
    lazy var view1: UIView = {
        var view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    lazy var view2: UIView = {
        var view = UIView()
        view.backgroundColor = .cyan
        return view
    }()
    
    lazy var view3: UIView = {
        var view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    lazy var view4: UIView = {
        var view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    lazy var view5: UIView = {
        var view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    lazy var view6: UIView = {
        var view = UIView()
        view.backgroundColor = .magenta
        return view
    }()
    
    lazy var view7: UIView = {
        var view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var view8: UIView = {
        var view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    lazy var view9: UIView = {
        var view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(view1)
        
        view1.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(90)
            make.top.equalToSuperview().offset(44)
        }
        
        self.view1.addSubview(view2)
        
        view2.snp.makeConstraints { (make) in
            make.width.equalTo(view1.snp.height)
            make.height.equalTo(view1.snp.height)
            make.left.equalTo(view1)
            make.top.equalTo(view1)
        }
        
        self.view1.addSubview(view3)
        
        view3.snp.makeConstraints { (make) in
            make.width.equalTo(view1.snp.height)
            make.height.equalTo(view1.snp.height)
            make.right.equalTo(view1)
            make.top.equalTo(view1)
        }
        
        self.view.addSubview(view4)
        self.view.addSubview(view5)
        self.view.addSubview(view6)
        self.view.addSubview(view7)
        
        view4.snp.makeConstraints { (make) in
            make.width.equalTo(view.snp.width).dividedBy(4)
            make.height.equalTo(100)
            make.left.equalTo(view.snp.left)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
        
        view5.snp.makeConstraints { (make) in
            make.width.equalTo(view.snp.width).dividedBy(4)
            make.height.equalTo(100)
            make.left.equalTo(view4.snp.right)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
        
        view6.snp.makeConstraints { (make) in
            make.width.equalTo(view.snp.width).dividedBy(4)
            make.height.equalTo(100)
            make.left.equalTo(view5.snp.right)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            
        }
        
        view7.snp.makeConstraints { (make) in
            make.width.equalTo(view.snp.width).dividedBy(4)
            make.height.equalTo(100)
            make.left.equalTo(view6.snp.right)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        self.view.addSubview(view8)
        
        view8.snp.makeConstraints { (make) in
            make.top.equalTo(view1.snp.bottom)
            make.width.equalTo(self.view)
            make.bottom.equalTo(self.view7.snp.top)
        }
    }
}

#if DEBUG
import SwiftUI
struct ViewController2Representable: UIViewControllerRepresentable{
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController {
        ViewController2()
    }
}

struct ViewController2Representable_PreviewProvider: PreviewProvider{
        static var previews: some View{
            Group{
                ViewController2Representable()
                    .ignoresSafeArea()
                    .previewDisplayName("device")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        }
    }
} #endif

