#!/bin/sh
echo "Build degabut-web"

echo "Clearing dist directory"
if [ -d "/var/dist" ]; then
    rm -r /var/dist/*
fi

echo "Installing pnpm"
npm i -g pnpm --loglevel error

if [ -d "degabut-web" ]; then
    echo "Directory exists"
else
    echo "Directory does not exist"
    git clone https://github.com/degabut/degabut-web.git
fi

cd degabut-web

target="main"
if [ -n "$TAG" ]; then
    target="$TAG"
elif [ -n "$BRANCH" ]; then
    target="$BRANCH"
fi

echo "Checking out to $target"
git checkout $target

if [ -n "$BRANCH" ]; then
    echo "Pulling latest changes"
    git pull
fi

echo "Installing dependencies"
pnpm i

echo "Building"
pnpm run build

mkdir -p /var/dist
cp -r dist/* /var/dist