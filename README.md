 Gebeta Food App

Gebeta Food App is a mobile application for food delivery. It allows users to browse restaurants, select food items, add them to their cart, and place orders for delivery. This README file provides an overview of the app's components, models, pages, and other modules.
Components

The following are the key components used in the Gebeta Food App:

    my_button.dart: A reusable button component used for various actions throughout the app.
    my_cart_tile.dart: A cart tile component that displays the details of items in the user's cart.
    my_current_location.dart: A component that shows the user's current location.
    my_description_box.dart: A box component used to display descriptions or additional information.
    my_drawer.dart: A navigation drawer component that provides access to different sections of the app.
    my_drawer_tile.dart: A tile component used in the navigation drawer to represent different sections.
    my_food_tile.dart: A tile component used to display food items.
    my_quantity_selector.dart: A component used to select the quantity of a particular food item.
    my_receipt.dart: A component that shows the order receipt and summary.
    my_sliver_app_bar.dart: A custom sliver app bar component used in the app.
    my_tab_bar.dart: A tab bar component that allows users to switch between different sections.
    my_textfield.dart: A custom text field component used for user input.

Models

The following models are used in the Gebeta Food App:

    cart_item.dart: A model representing an item in the user's cart.
    food.dart: A model representing a food item available for ordering.
    restaurant.dart: A model representing a restaurant.

Pages

The app consists of the following pages:

    cart_page.dart: The page that displays the user's cart and allows them to review and place the order.
    delivery_progress_page.dart: A page that shows the progress of the food delivery.
    food_page.dart: The page that displays the available food items from different restaurants.
    home_page.dart: The main landing page of the app that provides an overview of featured restaurants and food items.
    login_page.dart: The page where users can log in to their account.
    payment_page.dart: The page where users can make a payment for their order.
    register_page.dart: The page where new users can register for an account.
    settings_page.dart: The page where users can customize app settings.

Auth

The auth module contains the following components:

    login_or_register.dart: A component that allows users to choose between logging in or registering for an account.
    database: Contains firestore.dart, which is responsible for handling database operations.
    auth_gate.dart: A component that checks if the user is authenticated before allowing access to certain pages or features.
    auth_service.dart: A service that provides authentication-related functionality.

Themes

The themes module contains different themes and related components for the app:

    dark_mode.dart: The dark mode theme for the app.
    light_mode.dart: The light mode theme for the app.
    theme_provider.dart: A provider class that manages the app's theme.
    firebase_options.dart: Configuration options for Firebase integration.
