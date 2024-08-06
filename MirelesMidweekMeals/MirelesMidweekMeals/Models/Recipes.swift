//
//  Recipes.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import SwiftUI

// Define a recipe data model
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let ingredients: [String]
    let instructions: String
    let photo: String
}

// Sample recipes array
let sampleRecipes = [
    Recipe(name: "Claudillium Spagbowl",
           ingredients: [
            "350g spaghetti",
            "500g minced beef",
            "1 onion, chopped",
            "2 minced garlic cloves",
            "400g canned tomatoes",
            "Beef stock",
            "Basil",
            "MSG + Random Spices",
            "Olive oil",
            "PARMEGGGIANO!!"
           ],
           instructions: """
           1. Boil the spaghetti for 7 minutes with a pinch of MSG.
           2. In a pan, heat olive oil and sauté the onion and garlic until soft.
           3. Add minced beef and cook until browned.
           4. Add canned tomatoes, beef stock, basil and simmer for 20 minutes.
           5. Season however you like.
           6. Serve the sauce over the spaghetti and sprinkle with Parmesan cheese.
           """,
           photo: "spagbowl"),
    
    Recipe(name: "Chef Mireles' Thai Green Curry",
           ingredients: [
            "Green curry paste",
            "Coconut milk",
            "600g Chicken thighs",
            "2 Garlic Cloves",
            "Mangetout",
            "Peas",
            "Fish Sauce",
            "White Sugar",
            "Rice"
           ],
           instructions: """
           Ask William
           """,
           photo: "greencurry")
]
