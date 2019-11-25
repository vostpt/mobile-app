#!/bin/sh

curl -sL firebase.tools | bash
firebase appdistribution:distribute "build/app/outputs/apk/release/app-release.apk" --app 1:461625038109:android:2080ff54082f0dfe3c7df4 --groups vost-testers-android --token $FIREBASE_CLI_TOKEN
    