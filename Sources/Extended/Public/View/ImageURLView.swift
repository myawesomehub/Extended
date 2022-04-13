//
//  ImageURLView.swift
//  
//
//  Created by Mohammad Yasir on 14/04/22.
//

import SwiftUI

public struct ImageURLView: View {
    @ObservedObject var urlImageViewModel: ExtendedHelper.URLImageViewModel
    
    public init(urlString: String) {
        self.urlImageViewModel = ExtendedHelper.URLImageViewModel(urlString: urlString)
    }
    
    public var body: some View {
        if let image = UIImage(data: urlImageViewModel.data) {
            Image(uiImage: image)
                .resizable()
        }
    }
}
