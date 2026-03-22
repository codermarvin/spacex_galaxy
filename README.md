# SpaceX Galaxy Explorer 🚀

> **Note:** This project was intentionally scoped to fit the requested **4-hour Flutter technical challenge**. Planned improvements and future enhancements are listed below.

A polished, space-themed Flutter app for exploring **SpaceX rockets** and **launches** using **BLoC**, **Chopper**, **Freezed**, and **GoRouter**.

This project was built as a Flutter technical challenge to demonstrate:

- API integration
- state management
- clean architecture
- scalable project structure

---

## ✨ Overview

**SpaceX Galaxy Explorer** is a playful, space-themed Flutter app that makes SpaceX data engaging and approachable while keeping the codebase maintainable and scalable.

The app consumes data from the **SpaceX API** and presents it through a clean, responsive UI with a strong focus on architecture, usability, and code quality.

---

## 🎯 Challenge Goal

The goal of this project is to showcase the ability to:

- consume data from multiple API endpoints
- manage state predictably
- structure Flutter code for scalability
- present API-driven data clearly to end users

---

## 🛠 Tech Stack

- **Flutter**
- **flutter_bloc** – state management
- **chopper** – API client
- **freezed / json_serializable** – immutable models & unions
- **go_router** – navigation

---

## 📡 API Endpoints Used

This app integrates with the **SpaceX API** using multiple endpoints across two different controllers.

**Rockets**
- `/v4/rockets`
- `/v4/rockets/:id`

**Launches**
- `/v4/launches`
- `/v4/launches/:id`

> SpaceX API Docs:  
> https://github.com/r-spacex/SpaceX-API/tree/master/docs#rspacex-api-docs

---

## 📱 Features

- Browse **SpaceX rockets**
- View **launches**
- Clean, space-themed UI with playful visual styling
- Friendly loading, empty, and error states
- Reusable design tokens (colors, typography, spacing)
- Clean feature-first folder structure

---

## 🧠 Key Technical Decisions

- Chose **Rockets** and **Launches** because they are related datasets and demonstrate working across multiple API controllers.
- Used **BLoC** to keep presentation and business logic separated for predictable and scalable state management.
- Used **Chopper** for structured API integration and **Freezed** for immutable, type-safe models and state handling.
- Kept the scope intentionally focused to fit the **4-hour time limit**, prioritizing architecture, maintainability, and user experience over additional features.

---

## 🔮 Planned Improvements

If given more time, the next planned improvements would be:

**Data & Offline**
- Add **persistent offline caching** (e.g. Hive or Drift) for previously fetched rockets and launches
- Preserve the **last successful API response** between app launches
- Support a smoother **offline-aware experience** when the network is unavailable

**UX Enhancements**
- Add **pull-to-refresh** for rockets and launches
- Add **search and filtering** for easier content discovery
- Improve loading states with more playful animations and transitions

**Architecture & Scalability**
- Introduce **dependency injection** (e.g. `get_it` / `injectable`) for larger-scale maintainability
- Expand shared abstractions and reusable components as the app grows

**Internationalization**
- Add **full localization support** for multiple languages
- Move user-facing strings into a generated localization workflow for easier scaling

---

## 🏗 Project Structure

```bash
lib/
  app/
    router/
    theme/

  core/
    error/
    network/
    utils/
    widgets/

  features/
    rockets/
      data/
      domain/
      presentation/

    launches/
      data/
      domain/
      presentation/

  main.dart