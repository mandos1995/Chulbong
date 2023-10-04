//
//  MapView.swift
//
//
//  Created by 김민석 on 2023/09/26.
//

import SwiftUI

import KakaoMapsSDK

public struct MapView: View {
    @State private var draw: Bool = false
    public init() { }
    
    public var body: some View {
        KakaoMapView(draw: $draw)
            .onAppear { self.draw = true }
            .onDisappear { self.draw = false }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
    }
}
