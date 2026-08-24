#!/bin/bash

echo "=========================================="
echo "  Сборка Exzo Chat Android"
echo "=========================================="

# Проверка Android SDK
if [ -z "$ANDROID_HOME" ]; then
    echo "❌ ANDROID_HOME не установлен"
    echo ""
    echo "Установите Android SDK и выполните:"
    echo "  export ANDROID_HOME=\$HOME/Android/Sdk"
    exit 1
fi

echo "✅ Android SDK: $ANDROID_HOME"

# Сборка
echo ""
echo "Сборка APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "  ✅ Сборка завершена!"
    echo "=========================================="
    echo ""
    echo "APK: app/build/outputs/apk/debug/app-debug.apk"
    echo ""
    echo "Для установки:"
    echo "  adb install app/build/outputs/apk/debug/app-debug.apk"
else
    echo ""
    echo "❌ Ошибка сборки"
fi
