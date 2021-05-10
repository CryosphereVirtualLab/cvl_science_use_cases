#!/bin/bash

docker run --rm -d -v /Users/arazam/nansen_code/CVL/use_cases/cvl_science_use_cases/UseCase2/notebooks:/opt/notebooks -p 8888:8888 use_case_2_jupyter
