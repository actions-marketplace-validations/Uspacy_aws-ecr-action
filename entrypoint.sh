#!/bin/sh -l

repositoryName=$INPUT_REPOSITORYNAME
imageTagMutability=$INPUT_IMAGETAGMUTABILITY
scanOnPush=$INPUT_SCANONPUSH
tags=$INPUT_TAGS
tagStatus=$INPUT_TAGSTATUS
countType=$INPUT_COUNTTYPE
countNumber=$INPUT_COUNTNUMBER

python /main.py