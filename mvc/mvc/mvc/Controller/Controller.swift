//
//  ViewController.swift
//  mvc
//
//  Created by imac on 5/1/19.
//  Copyright © 2019 JeguLabs. All rights reserved.
//

import UIKit

class Controller: UIViewController {
    
    @IBOutlet weak var mangaNameLbl: UILabel!
    @IBOutlet weak var mangaScoreLbl: UILabel!
    @IBOutlet weak var mangaPriceLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let manga = Manga.init(name: "Evangelion", score: "11/10", price: 85)
        let something = Something.init(a: "a", b:"b", c: 0)
        print(something.a)
        
        mangaNameLbl.text = manga.name
        mangaScoreLbl.text = manga.score
        mangaPriceLbl.text = "\(manga.price)"
        
    }


}

