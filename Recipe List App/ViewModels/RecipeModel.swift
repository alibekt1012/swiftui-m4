//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Almat Alibekov on 09.01.2023.
//

import Foundation


class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    
    init() {
        
        // Create an instance of data service
        
        self.recipes = DataService.getLocalData()
        
        // Set the recipes property
        
    }
    
    
}

