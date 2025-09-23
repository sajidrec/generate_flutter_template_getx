# Generate Flutter Template (GetX Clean Architecture + MVVM)

A Dart script that generates a **Flutter project structure** using **GetX** with **Clean Architecture + MVVM**.

---

## ⚡ Features
- Creates full folder structure (core, data, domain, presentation).
- Sets up `main.dart`, routes, and a sample `home_page` module.
- Cleans up template files after generation.

---

## ⚠️ Warning
- This will **delete and recreate the `lib/` folder**.
- `contents/` and `generate_flutter_template.dart` will be removed after execution.

---

## 📦 Requirements
- Dart SDK  
- Flutter project initialized  
- Install GetX:
  ```bash
  flutter pub add get

🚀 Usage

Copy generate_flutter_template.dart and the contents/ folder into your Flutter project root directory.

Run:
```bash
dart generate_flutter_template.dart
