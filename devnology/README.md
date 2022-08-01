# Devnology Test

This project is a challenge from Devnology.
This project was created with the MVVM architecture, using the GetX ecosystem for navigation, bindings and state management.

## App Features

- Home page
- Product page
- Cart page
- Checkout page

## Used Packages

- equatable
- faker
- get
- carousel_slider

## Getting Started

### Architecture

The project root folder is the `lib` folder. This folder contains the project subfolders of the MVVM architecture: `model`, `view` and `viewModel`.\
The `model` layer contains all the data, business logic and code validations.
In the `viewModel` layer is the classes that serves as intermediators between the `model` and the `view` layer, containing methods to notify the `view` whenever needed.\
The last layer, `view`, is where all the UI is located. Here are all the widgets and pages used, as well as the methods that requests data from the `view_model` layer.

### Dependency Injection

The dependency injection is done by using the methods provided by the GetX ecosystem, inserting the bindings inside the `core` folder in the `model` layer, and then binding them to the routes in the `main.dart` file.

### Routing

The app navigation is implemented using the GetX routing system in the `main.dart` file. To navigate to another page, use one of the GetX provided methods, such as: `Get.to` or `Get.toNamed`.

### State Management

The State Management used for this project is the one provided by GetX, with GetXControllers.\
The controllers are located inside the `view` layer, along the pages themselves, and provide the screens with the methods necessary to call data from the other layers.
To access a controller inside a screen, use: `Get.find()`.