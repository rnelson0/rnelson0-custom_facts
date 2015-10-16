# custom_facts

This tutorial has been retired and is kept for historic purposes only. See [puppetinabox](https://github.com/puppetinabox/controlrepo) for a more modern reference architecture.

## Overview

Provide some custom facts for use in puppet manifests.

## Facts

`puppet_role`: Parses a hostname to determine the role. Accepts the regex formats:
  * \w+-(\w+)\d+: *loc-role01* or *env-role47* return *role*
  * \w+-(\w+): *loc-role* or *env-role* return *role*
  * (\w+)\d+: *role01* or *rol347* return *role*
  * (\w+): *role* returns *role*

