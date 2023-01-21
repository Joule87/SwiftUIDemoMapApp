//
//  LocationMapAnnotationView.swift
//  SwiftUIDemoMapApp
//
//  Created by Julio Collado Perez on 1/20/23.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    let accentColor = Color("AccentColor")
    
    var body: some View {
        VStack(spacing: -2) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(.degrees(180))
                .padding(.bottom, 36)
        }
    }
}

struct LocationMapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            LocationMapAnnotationView()
        }
    }
}
