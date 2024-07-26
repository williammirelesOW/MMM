//
//  RecipesView.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import SwiftUI

// Create a view for displaying the list of recipes
struct RecipesView: View {
    let recipes: [Recipe]
    
    var body: some View {
        NavigationView {
            List(recipes) { recipe in
                NavigationLink(destination: RecipeView(recipe: recipe)) {
                    HStack {
                        Image(recipe.photo)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .shadow(radius: 2)
                        Text(recipe.name)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Meals") // Set navigation title for the list
        }
    }
}
