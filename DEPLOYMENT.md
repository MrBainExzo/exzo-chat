# 🚀 Развертывание

## Сборка APK

### Android Studio

1. Откройте проект
2. Build → Build Bundle(s) / APK(s) → Build APK(s)
3. APK в `app/build/outputs/apk/debug/app-debug.apk`

### Командная строка

```bash
./gradlew assembleDebug
```

### GitHub Actions

1. Загрузите на GitHub
2. Actions → Build APK → Run workflow
3. Скачайте APK из Artifacts

---

## Установка на устройство

### Через USB

```bash
adb install app-debug.apk
```

### Вручную

1. Скопируйте APK на устройство
2. Откройте файловый менеджер
3. Установите APK

---

## Публикация

### Google Play

1. Создайте аккаунт разработчика
2. Подготовьте материалы
3. Загрузите AAB файл
4. Отправьте на ревью

---

**Последнее обновление:** 2026-08-24
