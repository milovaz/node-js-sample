#!/bin/bash

sfctl application delete --application-id nodeSample
sfctl application unprovision --application-type-name nodeSampleType --application-type-version 1.0.0
sfctl store delete --content-path nodeSample
