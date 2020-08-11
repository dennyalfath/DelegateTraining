//
//  ViewController.swift
//  DelegateTraining
//
//  Created by Denny Alfath on 11/08/20.
//  Copyright © 2020 Denny Alfath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ChangeWallpaperDelegate {
    
    @IBOutlet weak var wallpaperView: UIImageView!
    
    func updateWallpaper(wallpaper: UIImage) {
        wallpaperView.image = wallpaper
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ChangeWallpaperViewController
        destinationVC.delegate = self
    }
    

}

