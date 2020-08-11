//
//  ChangeWallpaperViewController.swift
//  DelegateTraining
//
//  Created by Denny Alfath on 11/08/20.
//  Copyright © 2020 Denny Alfath. All rights reserved.
//

import UIKit

protocol ChangeWallpaperDelegate {
    func updateWallpaper(wallpaper: UIImage)
}

class ChangeWallpaperViewController: UIViewController {
    
    var delegate: ChangeWallpaperDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nightWallpaper(_ sender: UIButton) {
        delegate?.updateWallpaper(wallpaper: #imageLiteral(resourceName: "img3"))
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fireworksWallpaper(_ sender: UIButton) {
        delegate?.updateWallpaper(wallpaper: #imageLiteral(resourceName: "img1"))
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func landscapeWallpaper(_ sender: UIButton) {
        delegate?.updateWallpaper(wallpaper: #imageLiteral(resourceName: "img2"))
        dismiss(animated: true, completion: nil)
    }
}
