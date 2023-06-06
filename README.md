# BookHive-App

The App is built using MVVM pattern. The App allows book lovers to discover, read, and review their favorite books.

BookHive offers a vast collection of books across various genres including Computer Science and Artificial Intellignece and more. User can view the details of a book. User can search of any book he wants.

## Contents

- [Preview](#preview)
- [App Structure](#app-structure)
- [Features](#features)
- [Getting Started](#getting-started)

## Preview

<div>
<img src="https://github.com/ahmedghaly15/Social-App/assets/108659381/6bb8dc98-885c-4724-be42-482ee515dc56" width= "300" height = "600"/>
&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://github.com/ahmedghaly15/Social-App/assets/108659381/dbc3431e-0aec-48fd-8baa-85e8f8c57017" width= "300" height = "600"/>
</div>

https://github.com/ahmedghaly15/Social-App/assets/108659381/cea962c4-8679-440c-b748-f6a53e9f40f9

## App Structure

```
lib
├── core
│   ├── errors
│   ├── models
│   ├── utils
│   └── widgets
│
├── features
│   ├── splash
│   ├── home
│   ├── search
│   └── web_display
│
├── constants.dart
│
├── my_bloc_observer.dart
│
└── main.dart

```

## Features

- `Featured Books`: This feature allows the app to showcase a selection of books that are currently popular or highly recommended. It can help users discover new books they might be interested in reading and can also help promote certain titles.

- `Newest Books`: This feature displays the most recently added books to the app's library. It's a useful way for users to stay up-to-date with new releases and can also help promote books that are newly published.

- `Book Details`: This feature provides users with detailed information about each book in the app's library. This can include the book's title, author, rating, description, and other relevant information such as the publisher. Users can use this information to decide whether or not they want to read a particular book.

- `Book Preview`: This feature allows users to preview a book. This could include reading a sample chapter or viewing a preview of the book's content. It's a useful feature for users who want to get a sense of the book's writing style and content before committing to reading the entire book.

- `Related Books`: This feature displays a list of related books on the details screen of each book in the app's library. The related books list is based on factors such as the book's genre, author, or similar themes. This feature can help users discover other books that they might be interested in reading, especially if they have enjoyed a particular book in the app's library. It can also help promote other books in the library that users might not have been aware of otherwise.

- `Search`: This feature allows users to search for any book they want within the app's library. Users can enter the book's title. This feature can help users quickly find the books they are interested in reading, especially if they are looking for a specific book.

## Getting Started

This project helps the user to explore some free books.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
