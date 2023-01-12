//
//  ContentView.swift
//  Recipe List App
//
//  Created by Almat Alibekov on 09.01.2023.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        
        
    
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r), label: {
                    HStack(spacing: 20.0) {
                        
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        
                        Text(r.name)
                    }
                })
                
             
                
            }
            .navigationTitle("All Recipes")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
