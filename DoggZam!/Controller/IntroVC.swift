//
//  IntroVC.swift
//  DoggZam!
//
//  Created by McKinney family  on 7/1/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit
import CoreML
import Vision
import AVFoundation


class IntroVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    //var || let
    var speechSynthesizer = AVSpeechSynthesizer()
    let imagePicker = UIImagePickerController()
    
    
    
    //outlets
    @IBOutlet weak var circleBTN: UIButton!
    @IBOutlet weak var dogImg: UIImageView!
    @IBOutlet weak var dogTitleLbl: UILabel!
    @IBOutlet weak var introPicIMG: UIImageView!
    @IBOutlet weak var step1LBl: UILabel!
    @IBOutlet weak var step2Lbl: UILabel!
    @IBOutlet weak var doggzamLbl: UILabel!
    @IBOutlet weak var blueView: UIView!
    
    
    
    
    
    
    //IBAction
 
    
    @IBAction func camBtnPressed(_ sender: Any) {
        present(imagePicker, animated: true, completion: nil)
        introPicIMG.isHidden = true
        dogTitleLbl.isHidden = true
        step1LBl.isHidden = true
        step2Lbl.isHidden = true
        doggzamLbl.isHidden = true
        blueView.isHidden = true
    }
    
    
    
    
    
    
    //func
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let userPickImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            dogImg.image = userPickImage
            guard let ciimage = CIImage(image: userPickImage) else {
                fatalError("Could not covert UIImage to Ciimage")
            }
            detect(image: ciimage)
        }
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    func detect(image: CIImage) {
        
        guard let model = try? VNCoreMLModel(for: Inceptionv3().model) else {
            fatalError("loading CoreML Model failed")
        }
       
        let request = VNCoreMLRequest(model: model) { (request, error) in
            guard let results = request.results as? [VNClassificationObservation] else {
                fatalError("model failed to process image")
            }
            print(results)
    
            if let beagleResults = results.first {
                if beagleResults.identifier.contains("Maltese") {
                    self.navigationItem.title = beagleResults.identifier
                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                    self.navigationController?.navigationBar.isTranslucent = false
                    self.synthesizeSpeech(fromString: " I believe this is a \(beagleResults.identifier)")
                    
                } else {
            
            if let dogAResults = results.first {
                if dogAResults.identifier.contains("border collie") {
                    self.navigationItem.title = dogAResults.identifier
                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                    self.navigationController?.navigationBar.isTranslucent = false
                    self.synthesizeSpeech(fromString: " I believe this is a \(dogAResults.identifier)")
                    
                } else {
            
            if let firstResults = results.first {
                if firstResults.identifier.contains("terrier") {
                    self.navigationItem.title = firstResults.identifier
                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                    self.navigationController?.navigationBar.isTranslucent = false
                    self.synthesizeSpeech(fromString: " I believe this is a \(firstResults.identifier)")
                    
                } else {
                    if let secondResults = results.first {
                        if secondResults.identifier.contains("hound") {
                            self.navigationItem.title = secondResults.identifier
                            self.navigationController?.navigationBar.barTintColor = UIColor.green
                            self.navigationController?.navigationBar.isTranslucent = false
                            self.synthesizeSpeech(fromString: "I believe this is a \(secondResults.identifier)")
                            
                        } else {
                            if let thirdResults = results.first {
                                if thirdResults.identifier.contains("spaniel") {
                                    self.navigationItem.title = thirdResults.identifier
                                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                                    self.navigationController?.navigationBar.isTranslucent = false
                                    self.synthesizeSpeech(fromString: "I believe this is a \(thirdResults.identifier)")
                                } else {
                                    if let fourthResults = results.first {
                                        if fourthResults.identifier.contains("Chihuahua") {
                                            self.navigationItem.title = fourthResults.identifier
                                            self.navigationController?.navigationBar.barTintColor = UIColor.green
                                            self.navigationController?.navigationBar.isTranslucent = false
                                            self.synthesizeSpeech(fromString: " I believe this is a \(fourthResults.identifier)")
                                            
                                        } else {
                                            if let fifthResults = results.first {
                                                if fifthResults.identifier.contains("poodle") {
                                                    self.navigationItem.title = fifthResults.identifier
                                                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                    self.navigationController?.navigationBar.isTranslucent = false
                                                    self.synthesizeSpeech(fromString: " I believe this is a \(fifthResults.identifier)")
                                                    
                                                } else {
                                                    if let sixthResults = results.first {
                                                        if sixthResults.identifier.contains("retriever") {
                                                            self.navigationItem.title = sixthResults.identifier
                                                            self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                            self.navigationController?.navigationBar.isTranslucent = false
                                                            self.synthesizeSpeech(fromString: " I believe this is a \(sixthResults.identifier)")
                                                            
                                                        } else {
                                                            if let seventhResults = results.first {
                                                                if seventhResults.identifier.contains("shepherd") {
                                                                    self.navigationItem.title = seventhResults.identifier
                                                                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                                    self.navigationController?.navigationBar.isTranslucent = false
                                                                    self.synthesizeSpeech(fromString: " I believe this is a \(seventhResults.identifier)")
                                                                    
                                                                } else {
                                                                    if let eightResults = results.first {
                                                                        
                                                                        if eightResults.identifier.contains("chow") {
                                                                            self.navigationItem.title = eightResults.identifier
                                                                            self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                                            self.navigationController?.navigationBar.isTranslucent = false
                                                                            self.synthesizeSpeech(fromString: " I believe this is a \(eightResults.identifier)")
                                                                            
                                                                        } else {
                                                                if let ninethResults = results.first {
                                                                if ninethResults.identifier.contains("bulldog") {
                                                                self.navigationItem.title = ninethResults.identifier
                                                                self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                                self.navigationController?.navigationBar.isTranslucent = false
                                                                self.synthesizeSpeech(fromString: " I believe this is a \(ninethResults.identifier)")
                                                                                
                                                                            } else {
                                                                    if let tenResults = results.first {
                                                                        if tenResults.identifier.contains("Shih-Tzu") {
                                                                            self.navigationItem.title = tenResults.identifier
                                                                            self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                                            self.navigationController?.navigationBar.isTranslucent = false
                                                                            self.synthesizeSpeech(fromString: " I believe this is a \(tenResults.identifier)")
                                                                            
                                                                        } else {
                                                                            if let huskyResults = results.first {
                                                                                if huskyResults.identifier.contains("husky") {
                                                                                    self.navigationItem.title = huskyResults.identifier
                                                                                    self.navigationController?.navigationBar.barTintColor = UIColor.green
                                                                                    self.navigationController?.navigationBar.isTranslucent = false
                                                                                    self.synthesizeSpeech(fromString: " I believe this is a \(huskyResults.identifier)")
                                                                                    
                                                                                } else {
                                                                            self.navigationItem.title = "Sorry try again!"
                                                                            self.navigationController?.navigationBar.barTintColor = UIColor.red
                                                                            self.navigationController?.navigationBar.isTranslucent = false
                                                                            self.synthesizeSpeech(fromString: "I'm sorry, I couldn't find that item. Please try again!")
                                                                            
                                }
                                                                        
                                                                            }
                                                                        }
                                                                    }
                                                                                
                                                                            }
                                                                            
                                                                            
                                                                        }
                                                                            
                                                                        }
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                
                                                
                                            }
                                        }
                    
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
        }
            }
            
            }
                
            }
        }
        
        let handler = VNImageRequestHandler(ciImage: image)
        do {
            try! handler.perform([request])
        }
        catch {
            print(error)
        }
    }
    
    
  
    
    
    //speech func
    func synthesizeSpeech(fromString string: String) {
        let speechUtterence = AVSpeechUtterance(string: string)
        speechSynthesizer.speak(speechUtterence)
        
    }
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        speechSynthesizer.delegate = self
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}


extension IntroVC: AVSpeechSynthesizerDelegate {
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        //finish utter
}

}
