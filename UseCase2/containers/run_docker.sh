#!/bin/bash

docker run --rm -d -v /srv/home/<Ptep_portal_username>/proc_tutorial_shell/notebooks:/opt/notebooks -p 8888:8888  use_case_2_jupyter
