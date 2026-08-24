# 🚀 Быстрая сборка APK

## Самый простой способ: Android Studio

### 1. Скачайте Android Studio

https://developer.android.com/studio

### 2. Установите и запустите

### 3. Откройте проект

File → Open → Выберите папку `exzo_chat_android`

### 4. Дождитесь синхронизации

Gradle автоматически скачает все зависимости

### 5. Соберите APK

Build → Build Bundle(s) / APK(s) → Build APK(s)

### 6. Готово!

APK в `app/build/outputs/apk/debug/app-debug.apk`

---

## Без Android Studio: GitHub Actions

### 1. Загрузите на GitHub

1. Создайте репозиторий
2. Загрузите файлы

### 2. Запустите сборку

Actions → Build APK → Run workflow

### 3. Скачайте APK

Actions → Artifacts → app-debug

---

## Время сборки

| Способ | Время |
|--------|-------|
| Android Studio (первый раз) | 5-10 мин |
| Android Studio (повторный) | 1-2 мин |
| GitHub Actions | 5-10 мин |

---

## Размер APK

~100 KB (очень маленький!)

---

**Удачи! 🎉**
