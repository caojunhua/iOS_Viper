//
//  JHHomeDetailView.swift
//  myViper
//
//  Created by cao hua on 2023/8/6.
//


import UIKit

class JHHomeDetailView: UIView {
    private lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 20, y: 40, width: 200, height: 60))
        label.textAlignment = .center
        return label
    }()
    var img: UIImageView = {
        let img = UIImageView(frame: CGRect(x: 20, y: 150, width: 200, height: 200))
        img.image = UIImage(named: "viper-icon")
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUI() {
        self.addSubview(self.label)
        
        self.addSubview(img)
    }
    
    func setData() {
        
    }
}
