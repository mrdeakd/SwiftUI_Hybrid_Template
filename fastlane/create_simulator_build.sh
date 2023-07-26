#!/bin/bash

rm -rf tmp_simulator_build
mkdir tmp_simulator_build && \
xcodebuild archive \
  -workspace InterviewApp.xcworkspace \
  -scheme InterviewApp \
  -archivePath ./tmp_simulator_build/builds/interviewapp \
  -sdk iphonesimulator && \
cd tmp_simulator_build/builds/interviewapp.xcarchive/Products/Applications && \
zip -r InterviewApp_simulator_build.zip ./* && \
cd - && \
cp ./tmp_simulator_build/builds/interviewapp.xcarchive/Products/Applications/InterviewApp_simulator_build.zip ./ && \
rm -rf tmp_simulator_build

exit 0
