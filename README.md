# CurrencyConverter

A simple iOS application that converts amounts from USD into selected currencies. It consists of two main screens:

1. **Main Screen**  
   - Provides a text field for entering an integer amount in USD.  
   - Allows users to toggle up to four different currencies using switches.  
   - Displays an error message if the user enters invalid input or selects no currencies.  
   - Includes a “Convert” button to navigate to the next screen.

2. **Results Screen**  
   - Shows the original USD amount entered.  
   - Displays the converted amounts for each currency switch that was turned on in the Main Screen.  
   - Labels for unselected currencies remain hidden.

## Key Features

- **Multi-view navigation**: Uses a segue to move from the Main Screen to the Results Screen.  
- **Data validation**: Ensures the user enters a valid integer amount in USD.  
- **Currency selection**: Users can select which currencies they want to see conversions for, up to four options.  
- **MVC pattern**: Separates the user interface from the currency conversion logic.  
- **Adaptive UI**: Supports all size classes (including iPad) and landscape orientation.

> **Note**: This project uses fixed conversion rates for simplicity. They can be adjusted or replaced with real-time data as needed.
