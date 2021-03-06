//
//  ScanViewController.swift
//  Samoff
//
//  Created by libo on 2017/9/13.
//  Copyright © 2017年 libo. All rights reserved.
//

import UIKit
import swiftScan
import FTIndicator
class ScanViewController: LBXScanViewController {
   var isFlashOn = false
    @IBOutlet weak var panelView: UIView!
    @IBOutlet weak var flashBtn: UIButton!
    @IBAction func flashBtnTap(_ sender: UIButton) {
        isFlashOn = !isFlashOn
        
        scanObj?.changeTorch()
        
        if isFlashOn {
            flashBtn.setImage(#imageLiteral(resourceName: "btn_enableTorch_w"), for: .normal)
        } else {
            flashBtn.setImage(#imageLiteral(resourceName: "btn_unenableTorch_w"), for: .normal)
        }
        
    }
    
    override func handleCodeResult(arrayResult: [LBXScanResult]) {
        if let result = arrayResult.first {
            let msg = result.strScanned
            FTIndicator.setIndicatorStyle(.dark)
            FTIndicator.showToastMessage(msg)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "扫码用车"
        // Do any additional setup after loading the view.
   
    navigationController?.navigationBar.barStyle = .blackTranslucent
        navigationController?.navigationBar.tintColor = UIColor.white
  
        var style = LBXScanViewStyle()
        style.anmiationStyle = .NetGrid
        style.animationImage = UIImage(named:"CodeScan.bundle/qrcode_scan_part_net")
        
        scanStyle = style
    }

   
    override func viewDidAppear(_ animated: Bool) {
       super.viewDidAppear(animated)
        view.bringSubview(toFront: panelView)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.tintColor = UIColor.black
   
       navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
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
