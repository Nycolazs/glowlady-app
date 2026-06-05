# Glow Lady Store - App Android

Um aplicativo Android nativo que encapsula o site **Glow Lady Store** em uma experiência mobile fluida e otimizada.

## 📱 Características

- ✅ **WebView integrada** apontando para https://glowladystore.com.br/
- ✅ **SafeArea** para respeitar status bar e notches
- ✅ **Ícone personalizado** (logo da Glow Lady Store)
- ✅ **Suporte a JavaScript** para interatividade completa do site
- ✅ **APK pronto para distribuição** (43.1 MB)

## 🚀 Build & Instalação

### Pré-requisitos

- Flutter 3.44.1+ ([instalar](https://flutter.dev/docs/get-started/install))
- Android SDK (API level 21+)
- Java Development Kit (JDK) 17+

### Gerar o APK

```bash
cd glowlady_app
flutter pub get
flutter build apk --release
```

O APK será gerado em: `build/app/outputs/flutter-apk/app-release.apk`

### Instalar no dispositivo

```bash
flutter install
# ou
adb install build/app/outputs/flutter-apk/app-release.apk
```

## 📦 Estrutura do Projeto

```
glowlady_app/
├── lib/
│   └── main.dart          # Código principal (WebView + SafeArea)
├── assets/
│   └── icon.png           # Logo da Glow Lady Store (1024x1024)
├── android/
│   ├── app/
│   │   ├── src/main/
│   │   │   ├── AndroidManifest.xml
│   │   │   └── res/
│   │   │       ├── mipmap-*/ic_launcher.png  # Ícones múltiplos DPIs
│   │   │       └── drawable/ic_launcher_foreground.xml
│   │   └── build.gradle
│   └── build.gradle
├── pubspec.yaml           # Dependências Flutter
└── README.md             # Este arquivo
```

## 🛠️ Dependências

- **webview_flutter** (4.13.1) - Componente WebView oficial do Flutter

## 🎨 Customização

### Trocar a URL do site

Edite `lib/main.dart` e altere:

```dart
..loadRequest(Uri.parse('https://glowladystore.com.br/'));
```

### Mudar a cor do tema

Em `lib/main.dart`, customize `ThemeData`:

```dart
theme: ThemeData(
  useMaterial3: true,
  colorSchemeSeed: const Color(0xFFFF7EB6), // sua cor aqui
),
```

### Atualizar o ícone

1. Coloque o novo PNG em `assets/icon.png` (mínimo 1024x1024)
2. Execute: `flutter pub run flutter_launcher_icons`
3. Recompile: `flutter build apk --release`

## 📄 Licença

Propriedade da **Glow Lady Store**. Uso restrito.

## 📞 Suporte

Para dúvidas sobre o app:
- 📧 **Email**: ladystoreglow@gmail.com
- 📱 **WhatsApp**: (15) 99871-0710
- 🌐 **Website**: https://glowladystore.com.br/
- 📸 **Instagram**: [@glowlady_store](https://instagram.com/glowlady_store)

---

**Versão**: 1.0.0  
**Data de Build**: Junho 2026  
**Plataforma**: Android 5.0+ (API 21+)
