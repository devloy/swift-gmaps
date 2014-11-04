//
//  ViewController.swift
//  gmaps
//
//  Created by kan on 2014/11/04.
//  Copyright (c) 2014年 notice,inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GMSMapViewDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    var target: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 34.689197, longitude: 135.502321)
    var camera: GMSCameraPosition = GMSCameraPosition(target: target, zoom: 12, bearing: 0, viewingAngle: 0)
    var mapView = GMSMapView(
      frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height)
    )
    mapView.myLocationEnabled = true
    mapView.camera = camera
    mapView.delegate = self

    var marker: GMSMarker = GMSMarker()
    marker.position = CLLocationCoordinate2DMake(34.689197, 135.502321)
    marker.title = "notice"
    marker.snippet = "japan"
    marker.map = mapView

    self.view.addSubview(mapView)

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

