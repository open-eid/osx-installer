#!/bin/bash

hdiutil unflatten $1
Rez -a beta.r -o $1
hdiutil flatten $1
