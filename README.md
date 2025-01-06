# Flutter Swipe Card App

This app uses the `appinio_swiper` package to implement swipeable cards and manage user interactions. The app consists of two screens: 

1. **Home Screen**:
   - Displays a list of cards fetched from a map.
   - Swiping functionality:
     - **Right Swipe**: Match.
     - **Left Swipe**: Pass.
   - Includes a button action:
     - **"Not Fit for Me"**: Reject profiles.

2. **Detail Screen**:
   - Opens when a card is tapped, displaying detailed information.

### Key Dependencies

- [`appinio_swiper`](https://pub.dev/packages/appinio_swiper): For swipeable card functionality.

### Running the App

To run the project, use the following command:

```bash
flutter run
