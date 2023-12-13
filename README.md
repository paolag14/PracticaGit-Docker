# PracticaGit-Docker

name: Web page in Docker
  on:
    push:
      branches:
    - main
jobs:
build:
runs-on: self-hosted
steps:
- name: Checkout Repository
uses: actions/checkout@v2
- name: Run Script
run: ./script.sh
