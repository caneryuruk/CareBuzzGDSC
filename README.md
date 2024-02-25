
# CareBuzz

CareBuzz is a mobile application designed to emphasize the importance of early diagnosis and to help users keep track of their health check-up schedules. The application reminds male and female individuals of a certain age to undergo necessary screenings for potential types of cancer, highlighting the significance of early detection. Additionally, it reminds users of all ages about necessary vaccinations and regular health check-ups. CareBuzz allows users to store personal health information such as age, height, weight, and blood type. Users can also create additional profiles for themselves, their newborns, family members, or any acquaintances. Future updates will include a map feature to display nearby hospitals and pharmacies, and an artificial intelligence feature that suggests which department to visit based on the users' health complaints. With CareBuzz, we aim to facilitate better tracking of health check-ups for users and help in the early diagnosis of potential health issues.

## System requirements

Dart SDK Version 2.18.0 or greater.
Flutter SDK Version 3.3.0 or greater.

### Application structure
After successful build, your application structure should look like this:
                    
```
.
├── android                         - It contains files required to run the application on an Android platform.
├── assets                          - It contains all images and fonts of your application.
├── ios                             - It contains files required to run the application on an iOS platform.
├── lib                             - Most important folder in the application, used to write most of the Dart code..
    ├── main.dart                   - Starting point of the application
    ├── core
    │   ├── app_export.dart         - It contains commonly used file imports
    │   ├── constants               - It contains static constant class file
    │   └── utils                   - It contains common files and utilities of the application
    ├── presentation                - It contains widgets of the screens
    ├── routes                      - It contains all the routes of the application
    └── theme                       - It contains app theme and decoration classes
    └── widgets                     - It contains all custom widget classes
```