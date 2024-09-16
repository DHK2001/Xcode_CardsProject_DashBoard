# Random Card Game App - UIKit Swift Project (Storyboards)

This project is a simple card game app created using Xcode, Swift, and UIKit with Storyboards. The app displays random card images from a deck, and allows users to stop the card rotation with a "Stop" button, which changes to a "Reset" button to restart the card display. There is also a "Rules" button to display the game’s rules.

## Features

- **Random Card Display**: Upon launching, random cards from a predefined deck are displayed continuously until the "Stop" button is pressed.
- **Stop and Reset Button**: 
  - The "Stop" button stops the random card rotation.
  - After stopping, the button changes to "Reset", allowing the user to restart the rotation.
- **Rules Button**: Displays the rules of the card game.
- **UIImage and Assets**: Card images are stored in the `Assets` folder and are displayed dynamically using `UIImageView`.

## Purpose of the Project

The purpose of this project is to:

- **Learn Storyboard-based Interface Creation**: Practice using Storyboards to create and layout UI components.
- **Compare with Code-based UI**: Understand the differences, advantages, and disadvantages of building UIs using Storyboards vs. programmatic approaches.
- **UIKit Components**: Learn how to work with `UIImageView`, `UIButton`, and manage layout with Storyboards.
- **Dynamic Image Handling**: Handle and display images from assets dynamically in an interactive UI.

## How It Works

1. **Random Card Rotation**: Random cards are continuously displayed until the "Stop" button is pressed.
2. **Stop and Reset**: Pressing the "Stop" button halts the card display, and the button text changes to "Reset", allowing the user to restart the card rotation.
3. **Rules Button**: Opens a new view or alert displaying the rules of the card game.

## Storyboards vs. Code-Based UI

This project highlights the differences between building UIs with Storyboards and creating them programmatically. Some comparisons:

- **Storyboards**: 
  - Visual, drag-and-drop UI creation.
  - Easier to visualize and modify layouts quickly.
  - Suitable for simple, standard UI components.
  
- **Code-Based UI**:
  - Requires writing all layout and components in code.
  - More control over dynamic interfaces and programmatic adjustments.
  - Can be harder to maintain or visualize for complex interfaces.

## Technologies Used

- **Xcode**: Developed using Xcode's Storyboard editor.
- **Swift**: Written in Swift using UIKit components.
- **Storyboards**: The user interface was created using Storyboards, unlike the code-based version of the app.

## Conclusion

This project was designed to explore the creation of interfaces using Storyboards in Xcode and compare it with building interfaces purely in code. Storyboards provide a visual and intuitive way to create and layout UI elements but may lack the flexibility and control that a code-based approach offers. This project helps to understand the advantages and limitations of both approaches.
