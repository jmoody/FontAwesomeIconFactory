#!/usr/bin/env bash

bundle
bundle exec pod install

xcrun xcodebuild \
  clean \
  test \
  -SYMROOT=build \
  -derivedDataPath build \
  -workspace FontAwesomeIconFactory.xcworkspace \
  -scheme FontAwesomeIconFactory \
  -destination 'platform=iOS Simulator,name=iPhone 5s,OS=latest' \
  -sdk iphonesimulator \
  -configuration Debug \
  | bundle exec xcpretty -tc && exit ${PIPESTATUS[0]}

