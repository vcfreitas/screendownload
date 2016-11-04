if [ ${TRAVIS_PULL_REQUEST} ]; then
    export FOLDER=stage
fi

if [ ${TRAVIS_TAG} ]; then
    export FOLDER=prod
fi