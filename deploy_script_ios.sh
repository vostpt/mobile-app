#!/bin/sh

cd ios
openssl aes-256-cbc -k "$IOS_DEPLOY_CERT_PASS" -in deploy_keys/cert.cer.enc -d -a -out deploy_keys/cert.cer
openssl aes-256-cbc -k "$IOS_DEPLOY_CERT_PASS" -in deploy_keys/key.p12.enc -d -a -out deploy_keys/key.p12
openssl aes-256-cbc -k "$IOS_DEPLOY_CERT_PASS" -in deploy_keys/profile.mobileprovision.enc -d -a -out deploy_keys/profile.mobileprovision
security create-keychain -p $CUSTOM_KEYCHAIN_PASSWORD ios-build.keychain
security default-keychain -s ios-build.keychain
security unlock-keychain -p $CUSTOM_KEYCHAIN_PASSWORD ios-build.keychain
security set-keychain-settings -t 3600 -l ~/Library/Keychains/ios-build.keychain
security import ./deploy_keys/AppleWWDRCA.cer -k ios-build.keychain -A
security import ./deploy_keys/cert.cer -k ios-build.keychain -A
security import ./deploy_keys/key.p12 -k ios-build.keychain -P $IOS_DEPLOY_CERT_PASS -A
security set-key-partition-list -S "apple-tool:,apple:" -s -k $CUSTOM_KEYCHAIN_PASSWORD ios-build.keychain > /dev/null
mkdir -p ~/Library/MobileDevice/Provisioning\ Profiles
cp ./deploy_keys/profile.mobileprovision ~/Library/MobileDevice/Provisioning\ Profiles/
open ./deploy_keys/profile.mobileprovision
open ./deploy_keys/cert.cer
open ./deploy_keys/key.p12
xcodebuild archive -workspace Runner.xcworkspace -scheme Runner -configuration Release -archivePath Runner.xcarchive
xcodebuild -exportArchive -archivePath Runner.xcarchive -exportPath ./ -exportOptionsPlist ciExportOptions.plist
curl -sL firebase.tools | bash
firebase appdistribution:distribute Runner.ipa --app 1:461625038109:ios:1d4a03f2bd53bc963c7df4 --groups vost-testers-ios --token $FIREBASE_CLI_TOKEN
    