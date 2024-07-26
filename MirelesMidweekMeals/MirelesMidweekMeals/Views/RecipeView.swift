//
//  RecipeView.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import SwiftUI

// Create a view for displaying a recipe
struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Image(recipe.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 20)
                Text(recipe.name)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                
                Text("Ingredients")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text("• \(ingredient)")
                }
                
                Text("Instructions")
                    .font(.headline)
                    .padding(.top, 20)
                    .padding(.bottom, 5)
                
                Text(recipe.instructions)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding()
        }
        .navigationTitle(recipe.name)
    }
}
