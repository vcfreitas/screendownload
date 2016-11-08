export TRAVIS_TAG=stage

if [ $TRAVIS_PULL_REQUEST ]; then
    export BUCKET=service-platform-hml
    echo $BUCKET
fi

if [ $TRAVIS_TAG ]; then
    export BUCKET=services-platform-prod
    echo $BUCKET
fi
