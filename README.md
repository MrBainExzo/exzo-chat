# 📱 Exzo Chat Android

## Быстрый старт

### Вариант 1: Android Studio (рекомендуется)

1. Откройте проект в Android Studio
2. Дождитесь синхронизации Gradle
3. Нажмите Run (▶)

### Вариант 2: Командная строка

```bash
# Убедитесь, что установлен Android SDK
export ANDROID_HOME=$HOME/Android/Sdk

# Соберите APK
./gradlew assembleDebug

# APK будет в: app/build/outputs/apk/debug/app-debug.apk
```

### Вариант 3: Онлайн сборка

1. Загрузите проект на GitHub
2. Используйте GitHub Actions для сборки
3. Скачайте APK из Artifacts

---

## Установка APK

### Через ADB

```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

### Вручную

1. Скопируйте APK на устройство
2. Откройте файловый менеджер
3. Установите APK

---

## Структура проекта

```
exzo_chat_android/
├── app/
│   ├── src/main/
│   │   ├── java/com/exzo/chat/
│   │   │   └── MainActivity.java
│   │   ├── assets/
│   │   │   └── index.html
│   │   ├── res/
│   │   │   ├── drawable/
│   │   │   ├── values/
│   │   │   └── layout/
│   │   └── AndroidManifest.xml
│   └── build.gradle
├── build.gradle
├── settings.gradle
└── gradle.properties
```

---

## Требования

- Android Studio 2022.3+ или
- Android SDK 34+
- Java JDK 11+

---

## Лицензия

MIT License
