# Ironline Suite - Setup Guide

## Prerequisites

- Node.js 18+ (Download from https://nodejs.org/)
- npm or yarn
- Git

## Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/puneet0702/ironline-app.git
cd ironline-app
```

### 2. Install Dependencies
```bash
npm install
```

### 3. Start Development Server
```bash
npm start
```

The app will open at `http://localhost:3000`

### 4. Build for Production
```bash
npm run build
```

## Building Android APK

### Prerequisites
- Android SDK installed
- Java JDK 17+
- Gradle

### Steps

1. **Initialize Capacitor:**
```bash
npm install @capacitor/core @capacitor/cli
npx cap init
```

2. **Add Android Platform:**
```bash
npx cap add android
```

3. **Build React App:**
```bash
npm run build
```

4. **Sync to Android:**
```bash
npx cap sync android
```

5. **Build APK:**
```bash
cd android
./gradlew assembleDebug
```

6. **APK Location:**
```
android/app/build/outputs/apk/debug/app-debug.apk
```

## Testing on Android Device/Emulator

```bash
# Using ADB
adb install android/app/build/outputs/apk/debug/app-debug.apk

# Or using Android Studio
# File > Open > Select android folder
```

## Project Structure

```
irconline-app/
├── src/
│   ├── App.jsx                  # Main app component
│   ├── index.jsx                # React entry point
│   └── index.css                # Global styles
├── public/
│   ├── index.html               # HTML template
│   └── manifest.json            # PWA manifest
├── android/                     # Android native code
├── .github/workflows/
│   └── build-apk.yml            # GitHub Actions workflow
├── package.json                 # Dependencies
├── tailwind.config.js           # Tailwind config
├── postcss.config.js            # PostCSS config
└── capacitor.config.json        # Capacitor config
```

## Features

### Admin Console
- 📊 Real-time KPI dashboard
- 👥 Member directory with search
- 💾 Membership management
- 📈 Analytics overview

### Member App
- 📅 Daily nutrition & workout overview
- 💪 Workout tracking with timer
- 🍎 AI food macro scanner
- 🤖 Interactive fitness coach

## Troubleshooting

### Port 3000 already in use
```bash
# Linux/Mac
lsof -i :3000
kill -9 <PID>

# Windows
netstat -ano | findstr :3000
taskkill /PID <PID> /F
```

### Android build errors
- Update Android SDK: `sdkmanager --update`
- Clean build: `./gradlew clean`
- Invalidate cache: Delete `android/.gradle` folder

### Capacitor sync issues
```bash
npx cap sync
npx cap build android
```

## Development Commands

```bash
# Start dev server
npm start

# Build for production
npm run build

# Run tests
npm test

# Eject (be careful, irreversible)
npm run eject
```

## Deployment

### Web Hosting (Vercel/Netlify)
1. Connect GitHub repo
2. Set build command: `npm run build`
3. Set publish directory: `build`

### Android Play Store
1. Generate signed APK/AAB
2. Create Play Console account
3. Upload and configure listing
4. Submit for review

## Support

For issues and questions, please create an issue on GitHub.

## License

MIT
