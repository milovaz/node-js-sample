sfctl application upload --path nodeSample --show-progress
sfctl application provision --application-type-build-path nodeSample
sfctl application create --app-name fabric:/nodeSampleDev --app-type nodeSampleType --app-version 1.0.9
