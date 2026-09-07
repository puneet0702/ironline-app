#!/bin/bash

echo "========================================"
echo "Ironline Suite - Installation Script"
echo "========================================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null
then
    echo "❌ Node.js is not installed. Please install from https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"
echo "✅ npm version: $(npm -v)"
echo ""

echo "📦 Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Installation complete!"
    echo ""
    echo "🚀 To start the development server, run:"
    echo "   npm start"
    echo ""
    echo "📱 To build for Android:"
    echo "   npm run build"
    echo "   npx cap sync android"
    echo "   cd android && ./gradlew assembleDebug"
    echo ""
else
    echo "❌ Installation failed. Please check the error messages above."
    exit 1
fi
