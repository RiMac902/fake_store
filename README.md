# Fake Store

A modern e-commerce application built with Flutter, supporting multiple platforms including Android, iOS, Web, Windows, and macOS.


## UI Components

**The application includes a modern set of reusable UI components:**
- Multiple button styles (primary, secondary, outline, ghost, etc.)
- Responsive price and cart widgets
- Filter and navigation buttons
- Consistent color palette and spacing

## Project Structure

```
lib/
├── core/
│   ├── components/
│   │   ├── app_button.dart
│   │   ├── app_icon_button.dart
│   │   ├── app_text.dart
│   │   ├── app_textfield.dart
│   │   └── count_button.dart
│   ├── config/
│   │   ├── bloc_observer.dart
│   │   └── routes.dart
│   ├── error/
│   │   ├── failures.dart
│   │   └── failures.freezed.dart
│   ├── modules/
│   │   └── modules.dart
│   ├── network/
│   │   └── dio_client.dart
│   ├── usecase/
│   │   └── usecase.dart
│   └── utils/
│       └── go_router_refresh_stream.dart
├── feature/
│   ├── authentication/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   └── auth_datasource.dart
│   │   │   └── repositories/
│   │   │       └── auth_repositories_impl.dart
│   │   └── ...
│   └── shop/
│       ├── domain/
│       │   ├── entities/
│       │   │   ├── cart_entity.dart
│       │   │   ├── cart_entity.freezed.dart
│       │   │   ├── product_entity.dart
│       │   │   └── product_entity.freezed.dart
│       │   ├── repositories/
│       │   │   └── shop_repositories.dart
│       │   └── usecases/
│       │       ├── add_to_cart_usecase.dart
│       │       ├── add_to_wishlist_usecase.dart
│       │       ├── get_cart_usecasse.dart
│       │       ├── get_carts_usecase.dart
│       │       ├── get_product_usecase.dart
│       │       ├── get_products_usecase.dart
│       │       ├── get_wishlist_usecase.dart
│       │       ├── remove_from_wishlist.dart
│       │       └── remove_rom_cart_usecase.dart
│       ├── presentation/
│       │   ├── bloc/
│       │   │   └── shop/
│       │   │       ├── shop_bloc.dart
│       │   │       ├── shop_bloc.freezed.dart
│       │   │       ├── shop_event.dart
│       │   │       └── shop_state.dart
│       │   ├── models/
│       │   │   ├── cart_item.dart
│       │   │   ├── cart_item.freezed.dart
│       │   │   ├── product_ui_model.dart
│       │   │   └── product_ui_model.freezed.dart
│       │   ├── pages/
│       │   │   ├── cart_page.dart
│       │   │   ├── home_page.dart
│       │   │   ├── product_page.dart
│       │   │   └── wishlist_page.dart
│       │   └── widgets/
│       │       ├── app_scaffold.dart
│       │       ├── cart_card.dart
│       │       ├── checkout_bar.dart
│       │       ├── product_card.dart
│       │       ├── shop_appbar.dart
│       │       └── wishlist_card.dart
├── injection.config.dart
├── injection.dart
└── main.dart
```

## Features

- User Authentication
- Product Catalog & Details
- Wishlist & Cart Management
- Responsive UI for all platforms
- Clean Architecture
- BLoC State Management
- Go Router Navigation
- Dependency Injection with GetIt and Injectable
- Code Generation with Freezed

## Getting Started

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. (Optional) Set up your backend or use the provided FakeStoreAPI
4. Run code generation:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## Architecture

This project follows Clean Architecture principles with the following layers:

1. **Presentation Layer** (UI)
   - Pages
   - Widgets
   - BLoC (State Management)

2. **Domain Layer** (Business Logic)
   - Entities
   - Use Cases
   - Repository Interfaces

3. **Data Layer** (Data Sources)
   - Repository Implementations
   - Data Sources (Remote/Local)
   - Models (presentation models for UI mapping and display)

4. **Core Layer** (Common Functionality)
   - Configuration
   - Error Handling
   - Network
   - Utils

## Responsive Design

The app uses `flutter_screenutil` for responsive design, ensuring proper layout across different screen sizes and platforms. UI components are organized in the `core/components` and `feature/shop/presentation/widgets` directories.

## State Management

BLoC pattern is used for state management, with the following structure:
- Events
- States
- BLoC classes

## Navigation

Go Router is used for navigation, with routes defined in `core/config/routes.dart`.

## Dependency Injection

GetIt and Injectable are used for dependency injection. Run code generation after adding new dependencies.

## Code Generation

The project uses several code generation tools:
- Freezed for immutable models
- JSON Serializable for JSON serialization
- Injectable for dependency injection

Run the following command to generate code:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```
