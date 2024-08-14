//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Samet KATI on 14.08.2024.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let downloadButton : UIButton = {
        let dwbtn = UIButton()
        dwbtn.translatesAutoresizingMaskIntoConstraints = false
        dwbtn.setTitle("Download", for: .normal)
        dwbtn.setTitleColor(.black, for: .normal)
        dwbtn.backgroundColor = .white
        dwbtn.layer.cornerRadius = 12
        return dwbtn
    }()
    
    private let playButton : UIButton = {
        let plybtn = UIButton()
        plybtn.translatesAutoresizingMaskIntoConstraints = false
        plybtn.setTitle("Play", for: .normal)
        plybtn.setTitleColor(.black, for: .normal)
        plybtn.backgroundColor = .white
        plybtn.layer.cornerRadius = 12
        return plybtn
    }()
    
    private let heroImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "Header")
        return imageView
    }()
    
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor,
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor , constant: 60),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 120),
            
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor , constant: -60),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
}
