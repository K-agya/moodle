# Moodle Clone — Flutter Coursework

A mobile-first Flutter recreation of the Moodle platform, built for the M30235
User Experience Design and Implementation (Programming Applications and
Programming Languages) referral/deferral coursework.

## Overview

This app reimplements the core Moodle student experience — dashboard,
courses, course details, assessments, calendar, profile, and login — as a
Flutter mobile application, using static/hardcoded data throughout.

## Features

- **Dashboard** — course overview, upcoming deadlines, announcements, and a
  calendar summary card
- **Courses** — list of enrolled modules (PAPL and Maths), each opening a
  dynamic Course Details page
- **Course Details** — module information (overview, materials, assessment)
  rendered from a shared `Course` data model, so the same page displays
  different content depending on which course card was tapped
- **Assessments** — list of assessments with due dates and status
- **Calendar** — interactive month-view calendar (via `table_calendar`)
  showing hardcoded deadlines, including this coursework's submission date
- **Profile** — student details and an account settings section, including a
  Log out action
- **Login** — static login form; logging in or out navigates between the
  Login and Dashboard pages without functional authentication
- **Reusable navigation** — a shared `AppScaffold` widget (AppBar + side
  `NavDrawer`) used across every page, with a default icon row (search,
  notifications, chat, avatar) that pages can override where needed

## Project Structure

```
lib/
  main.dart              # App entry point and named routes
  constants.dart          # Shared colour palette
  models/
    course.dart            # Course data model + hardcoded course data
  views/
    dashboard_view.dart
    courses_view.dart
    course_details_view.dart
    assessments_view.dart
    calendar_view.dart
    profile_view.dart
    login_view.dart
  widgets/
    app_scaffold.dart      # Shared AppBar + NavDrawer scaffold
    nav_drawer.dart         # Side navigation drawer
    calendar_card.dart      # Dashboard calendar summary widget
```

## Setup

1. Clone this repository
2. Run `flutter pub get`
3. Run `flutter run -d chrome`

The app opens on the Dashboard. Use the navigation drawer (hamburger icon)
to move between pages, tap a course card to view its details, or tap the
avatar icon in the top bar to open the Profile page.

## Tech Stack

- Flutter / Dart
- [`table_calendar`](https://pub.dev/packages/table_calendar) for the
  interactive calendar view

## Notes

- All data in this app is static/hardcoded, in line with the Basic-tier
  coursework requirements — nothing is fetched from a live backend or
  database.
- Login and Log out are navigation-only and do not perform real
  authentication.
