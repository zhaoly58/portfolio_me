#!/bin/bash

echo "🧹 Starting build cleanup..."

# Clean Xcode DerivedData
echo "🗑️  Cleaning Xcode DerivedData..."
rm -rf ~/Library/Developer/Xcode/DerivedData/*

# Clean iOS build artifacts from Flutter projects
if command -v flutter &> /dev/null; then
  echo "🧼 Cleaning Flutter build files..."
  find . -type d -name 'build' -exec rm -rf {} +
  flutter clean
fi

# Clean build folders in iOS projects (not Flutter)
echo "🧼 Cleaning iOS build folders..."
find . -type d -name 'build' -exec rm -rf {} +

# Clean Pods and re-install (optional)
if [ -f "Podfile" ]; then
  echo "📦 Cleaning CocoaPods..."
  rm -rf Pods/
  rm -rf ~/Library/Developer/Xcode/Archives/*
  pod install
fi

# Clean Carthage build folder
if [ -d "Carthage" ]; then
  echo "🧼 Cleaning Carthage builds..."
  rm -rf Carthage/Build
fi

# Clean node_modules
if [ -d "node_modules" ]; then
  echo "📦 Cleaning node_modules..."
  rm -rf node_modules/
  npm install
fi

# Optionally clean .xcworkspace and re-create
if [ -f "Podfile" ]; then
  echo "🧼 Cleaning .xcworkspace..."
  rm -rf *.xcworkspace
  pod install
fi

echo "✅ Cleanup complete!"