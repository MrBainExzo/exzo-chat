# 📦 Инструкция по сборке APK

## Способ 1: Android Studio (самый простой)

### Шаг 1: Установите Android Studio

Скачайте с https://developer.android.com/studio

### Шаг 2: Откройте проект

1. Запустите Android Studio
2. Нажмите "Open an existing project"
3. Выберите папку `exzo_chat_android`
4. Дождитесь синхронизации Gradle

### Шаг 3: Соберите APK

1. Нажмите Build → Build Bundle(s) / APK(s) → Build APK(s)
2. Дождитесь завершения сборки
3. APK будет в `app/build/outputs/apk/debug/app-debug.apk`

### Шаг 4: Установите на устройство

1. Подключите устройство через USB
2. Нажмите Run (▶)
3. Или скопируйте APK на устройство и установите вручную

---

## Способ 2: Командная строка

### Шаг 1: Установите Android SDK

```bash
# Ubuntu/Debian
sudo apt install android-sdk

# macOS
brew install android-sdk

# Или скачайте с https://developer.android.com/studio#command-tools
```

### Шаг 2: Установите переменные окружения

```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
```

### Шаг 3: Соберите APK

```bash
cd exzo_chat_android
chmod +x gradlew
./gradlew assembleDebug
```

### Шаг 4: Установите APK

```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

---

## Способ 3: GitHub Actions (бесплатно)

### Шаг 1: Создайте репозиторий на GitHub

1. Перейдите на https://github.com
2. Создайте новый репозиторий
3. Загрузите файлы проекта

### Шаг 2: Запустите сборку

1. Перейдите в Actions
2. Выберите "Build APK"
3. Нажмите "Run workflow"
4. Дождитесь завершения (5-10 минут)

### Шаг 3: Скачайте APK

1. Перейдите в Actions → Последний workflow
2. Нажмите "Artifacts"
3. Скачайте `app-debug`

---

## Способ 4: Онлайн сервисы

### Appetize.io

1. Загрузите APK на https://appetize.io
2. Получите ссылку для тестирования

### Diawi

1. Загрузите APK на https://www.diawi.com
2. Получите ссылку для установки

---

## Устранение проблем

### Ошибка: SDK not found

```bash
export ANDROID_HOME=$HOME/Android/Sdk
```

### Ошибка: Java not found

```bash
sudo apt install openjdk-11-jdk
```

### Ошибка: Gradle sync failed

1. File → Invalidate Caches / Restart
2. Повторите синхронизацию

### Ошибка: Build failed

1. Проверьте логи ошибок
2. Обновите Android Studio
3. Обновите Gradle

---

## Требования

| Компонент | Минимум |
|-----------|---------|
| Android Studio | 2022.3+ |
| Java | JDK 11+ |
| Android SDK | API 21+ |
| RAM | 4 GB+ |
| Место | 2 GB+ |

---

## Структура APK

```
app-debug.apk
├── classes.dex (Java код)
├── res/ (ресурсы)
├── assets/ (HTML/CSS/JS)
├── AndroidManifest.xml
└── META-INF/ (подпись)
```

---

## Размер APK

| Компонент | Размер |
|-----------|--------|
| Java код | ~10 KB |
| HTML/CSS/JS | ~20 KB |
| Ресурсы | ~50 KB |
| **Итого** | **~100 KB** |

---

## Подпись APK

### Debug (для тестирования)

APK автоматически подписывается debug ключом.

### Release (для публикации)

```bash
# Генерация ключа
keytool -genkey -v -keystore my-release-key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias

# Подписание
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.jks app-release-unsigned.apk my-alias

# Выравнивание
zipalign -v 4 app-release-unsigned.apk app-release.apk
```

---

## Публикация в Google Play

1. Создайте аккаунт разработчика
2. Подготовьте материалы (иконка, скриншоты, описание)
3. Загрузите AAB файл
4. Отправьте на ревью

---

**Удачи! 🚀**
