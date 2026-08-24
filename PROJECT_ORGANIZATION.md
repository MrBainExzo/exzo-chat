# 🏢 Организация проекта

## Структура

### Корневая директория

```
exzo_chat_android/
├── app/                    # Android приложение
├── gradle/                 # Настройки Gradle
├── .github/                # GitHub Actions
├── build.gradle            # Корневой build файл
├── settings.gradle         # Настройки проекта
├── gradle.properties       # Свойства Gradle
├── gradlew                 # Скрипт запуска Gradle
├── .gitignore              # Исключения для Git
├── LICENSE                 # Лицензия
└── README.md               # Документация
```

### Директория app

```
app/
├── src/main/
│   ├── java/com/exzo/chat/
│   │   └── MainActivity.java
│   ├── assets/
│   │   └── index.html
│   ├── res/
│   │   ├── drawable/
│   │   │   └── ic_launcher.xml
│   │   └── values/
│   │       ├── colors.xml
│   │       └── styles.xml
│   └── AndroidManifest.xml
├── build.gradle
└── proguard-rules.pro
```

---

## Файлы

### Код

| Файл | Описание |
|------|----------|
| `MainActivity.java` | Основная активность |
| `index.html` | HTML/CSS/JS интерфейс |

### Конфигурация

| Файл | Описание |
|------|----------|
| `AndroidManifest.xml` | Манифест приложения |
| `build.gradle` | Конфигурация сборки |
| `settings.gradle` | Настройки проекта |
| `gradle.properties` | Свойства Gradle |

### Ресурсы

| Файл | Описание |
|------|----------|
| `ic_launcher.xml` | Иконка приложения |
| `colors.xml` | Цвета |
| `styles.xml` | Стили |

### Документация

| Файл | Описание |
|------|----------|
| `README.md` | Основная документация |
| `LICENSE` | Лицензия |
| `.gitignore` | Исключения для Git |

---

## Размеры

| Компонент | Размер |
|-----------|--------|
| Код | ~20 KB |
| Ресурсы | ~5 KB |
| Документация | ~40 KB |
| Конфигурация | ~5 KB |
| **Итого** | **~70 KB** |

---

## Навигация

### Для начала

- [START_HERE.md](START_HERE.md)
- [README.md](README.md)

### Для сборки

- [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md)
- [QUICK_BUILD.md](QUICK_BUILD.md)

### Для установки

- [INSTALL_APK.md](INSTALL_APK.md)

### Для использования

- [FEATURES.md](FEATURES.md)
- [FAQ.md](FAQ.md)

---

**Последнее обновление:** 2026-08-24
