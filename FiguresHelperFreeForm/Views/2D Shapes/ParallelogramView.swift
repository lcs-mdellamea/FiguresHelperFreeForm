//
//  ParallelogramView.swift
//  FiguresHelperFreeForm
//
//  Created by Russell Gordon on 2021-12-04.
//

import SwiftUI

struct ParallelogramView: View {
    
    // MARK: Stored properties
    @State var providedBase = ""
    @State var providedHeight = ""
    @State var providedDiagonal = ""

    // MARK: Computed properties
    
    var Base: Double? {
        // Tests of the provided input
        // 1. Ensure that we can simply change the input into a double
        // 2. Ensure that the value as a double is more than 0
        
        // With a guard statement, we list the things we want to be true, and provide an action to carry out when those conditions are not met.
        
        guard let Base = Double(providedBase),
              Base > 0
        else {
            // When the tests are failed, we do not have a valid radius
            return nil
            
        }
        
        // If we get here, we know the radius is good
        return Base
        
    }
    
    var Height: Double? {
        // Tests of the provided input
        // 1. Ensure that we can simply change the input into a double
        // 2. Ensure that the value as a double is more than 0
        
        // With a guard statement, we list the things we want to be true, and provide an action to carry out when those conditions are not met.
        
        guard let Height = Double(providedHeight),
              Height > 0
        else {
            // When the tests are failed, we do not have a valid radius
            return nil
            
        }
        
        // If we get here, we know the radius is good
        return Height
        
    }
    
    var Diagonal: Double? {
        // Tests of the provided input
        // 1. Ensure that we can simply change the input into a double
        // 2. Ensure that the value as a double is more than 0
        
        // With a guard statement, we list the things we want to be true, and provide an action to carry out when those conditions are not met.
        
        guard let Diagonal = Double(providedDiagonal),
              Diagonal > 0
        else {
            // When the tests are failed, we do not have a valid radius
            return nil
            
        }
        
        // If we get here, we know the radius is good
        return Diagonal
        
    }
    
    var area: Double? {
        
        guard let Base = Base else {
            // We didn't have a valid radius
            // We can't calculate the area...
            return nil
        }
        
        guard let Height = Height else {
            // We didn't have a valid radius
            // We can't calculate the area...
            return nil
        }
        
        guard let Diagonal = Diagonal else {
            // We didn't have a valid radius
            // We can't calculate the area...
            return nil
        }
        
        
        return Base * Height
    }
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                DiagramView(image: "parallelogram",
                            horizontalPadding: 50)
                
                
                // Base
                Group {
                    
                    SectionLabelView(text: "Base", variable: "b")

                    // Input: Base
                    
                    TextField("Radius", text: $providedBase, prompt: Text("Numeric value greater than 0"))
                    //                           Ternary conditional operators
                    //                             "One line if statement"
                    //                           CONDITION      TRUE        FALSE
                        .foregroundColor(Base == nil ? Color.red : Color.primary)
                    
                    // Output: Base

                }
                
                // Height
                
                Group {
                    
                    SectionLabelView(text: "Height", variable: "h")

                    // Input: Height
                    
                    TextField("Radius", text: $providedHeight, prompt: Text("Numeric value greater than 0"))
                    //                           Ternary conditional operators
                    //                             "One line if statement"
                    //                           CONDITION      TRUE        FALSE
                        .foregroundColor(Height == nil ? Color.red : Color.primary)
                    
                    // Output: Base
                }

                // Diagonal
                
                Group {
                    
                    SectionLabelView(text: "Diagonal", variable: "c")

                    // Input: Height
                    
                    TextField("Radius", text: $providedDiagonal, prompt: Text("Numeric value greater than 0"))
                    //                           Ternary conditional operators
                    //                             "One line if statement"
                    //                           CONDITION      TRUE        FALSE
                        .foregroundColor(Diagonal == nil ? Color.red : Color.primary)
                    
                    // Output: Base

                }

                SectionLabelView(text: "Area", variable: "a")
                
                // Output: Area
                OutputValueView(value: area, suffix: "square units")
                
            }
            
        }
        .navigationTitle("Parallelogram")
        .padding()
    }
}

struct ParallelogramView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ParallelogramView()
        }
    }
}
