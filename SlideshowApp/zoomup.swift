//
//  zoomup.swift
//  SlideshowApp
//
//  Created by 西谷祐樹 on 2018/08/11.
//  Copyright © 2018年 西谷祐樹. All rights reserved.
//

import UIKit

class zoomup: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    var image: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageView.image = image

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
