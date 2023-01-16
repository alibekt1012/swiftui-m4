//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Almat Alibekov on 10.01.2023.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                
                
                // MARK: Recipe imgae
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Ingerdients
                VStack(alignment: .leading) {
                    Text("Indgerdients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach (recipe.ingredients) { item in
                        
                        Text("- " + item.name)
                        
                        
                        
                    }
                }
                .padding(.horizontal)
                
                // MARK: Divider
                
                Divider()
                
                
                // MARK: Directions
                
                VStack(alignment: .leading) {
                    
                    
                    
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                         
                        Text(String(index + 1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                        
                    }
                    
                }
                .padding(.horizontal)
                
            }
                    }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
