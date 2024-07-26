//
//  HomePageView.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import SwiftUI

// Create an initial homepage view
struct HomePageView: View { // New view for the initial homepage
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image("brandimage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                
                Text("MMMmmmm")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                NavigationLink(destination: RecipesView(recipes: sampleRecipes)) { // NavigationLink to RecipesView
                    Text("Get cooking!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("§          Welcome!") // Set navigation title for the homepage
        }
    }
}
