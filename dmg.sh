#!/bin/bash
# SPDX-FileCopyrightText: Estonian Information System Authority
# SPDX-License-Identifier: LGPL-2.1-or-later

hdiutil unflatten $1
Rez -a beta.r -o $1
hdiutil flatten $1
