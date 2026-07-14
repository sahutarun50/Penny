//
//  ShowAllTransactionsButton.swift
//  Penny
//
//  Created by Tarun Sahu on 13/07/26.
//

import SwiftUI

struct ShowAllTransactionsButton: View {
    let action: () -> Void

    
    var body: some View {
        Button (action:action){
            HStack(){
                Text("Show All Transations")
                    .font(AppTypography.amountSmall)
                    .foregroundColor(AppColors.primary)
                Image(systemName: "chevron.right")
                    .frame(width: 20,height: 20)
            }
        }
    }
}

#Preview {
    ShowAllTransactionsButton(action: {
        
    })
}
