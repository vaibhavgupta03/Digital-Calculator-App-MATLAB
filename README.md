# Digital-Calculator-App-MATLAB
This repository contains a simple yet functional digital calculator app designed using MATLAB App Designer. The calculator supports basic arithmetic operations such as addition, subtraction, multiplication, division, and exponentiation, providing users with a straightforward interface to perform calculations.

![Calculator](/Calculator_ui.png)

## Features
- Basic Arithmetic Operations: Perform addition, subtraction, multiplication, division, and exponentiation.
- User-Friendly Interface: Intuitive layout with clearly labeled buttons for easy operation.
- Real-Time Results: Get instant results displayed as you perform operations.

## Repository Contents
- Calculator.mlapp: The main MATLAB App Designer file, containing the app's UI and logic.
- Calculator_exported.m: The exported MATLAB file from the App Designer, containing the app's code and callback functions.
- calculator_ui.png: A screenshot of the calculator's user interface, demonstrating the app's design.

## Getting Started
### Prerequisites
To run this application, you'll need:

- MATLAB R2020a or later
- MATLAB App Designer toolbox

### Installation
- Clone the Repository:
- Open the Project:
- Launch MATLAB.
- Navigate to the cloned repository folder.
- Open Calculator.mlapp in MATLAB App Designer.

### Run the Application:
- Click on the "Run" button in the App Designer toolbar.
- The calculator UI will launch, and you can start performing calculations.

## How to Use the Calculator
### Input Numbers:

- Enter the first number in the "Input Number 1" field.
- Enter the second number in the "Input Number 2" field.
### Select an Operation:

- Click on the desired operation button (+, -, *, /, ^) to perform the calculation.
### View the Result:

- The result will be displayed in the "Output" field.

## How to Design the Calculator
### UI Components:
- Use uipanel for organizing different sections like input numbers, operators, and results.
- Add uitextarea for number inputs and results display.
- Add uibutton for each arithmetic operation.

### Callback Functions:
- Assign each button a callback function to perform the respective arithmetic operation when clicked.
- Ensure the callback functions read the input values, perform the calculation, and update the output field with the result.
  
### Error Handling:
- Implement basic error handling to manage division by zero and invalid inputs.

## Contributing
Contributions are welcome! If you'd like to contribute:

- Fork this repository.
- Create a new branch (git checkout -b feature-branch).
- Make your changes.
- Commit your changes (git commit -am 'Add new feature').
- Push to the branch (git push origin feature-branch).
- Create a pull request.

## Contact
If you have any questions or feedback, feel free to reach out at vaibhavgupta6393@gmail.com.
