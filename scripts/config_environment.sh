export TRAVIS_TAG=stage

if [ $TRAVIS_PULL_REQUEST ]; then
    export FOLDER=stage
    echo $FOLDER
fi

if [ $TRAVIS_TAG ]; then
    export FOLDER=prod
    echo $FOLDER
fi
