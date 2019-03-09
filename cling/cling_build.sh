#!/usr/bin/env bash
set -eux

WORKSPACE="/root/cling"
SRC_DIR="${WORKSPACE}/src"
BUILD_DIR="${WORKSPACE}/build"
INSTALL_DIR="/opt/cling"


function initialize() {
    mkdir -p "${WORKSPACE}"
}

function clone_fast() {  
    # clone <repo_name> <branch> <dir>
    git clone --depth 1 "http://root.cern.ch/git/${1}.git" --branch "${2}" "${3}" >/dev/null
}

function get_sources() {
    clone_fast llvm  cling-patches "${SRC_DIR}"
    clone_fast clang cling-patches "${SRC_DIR}/tools/clang"
    clone_fast cling master        "${SRC_DIR}/tools/cling"
}

function configure_build() {
    mkdir -p "${BUILD_DIR}"
    cd "${BUILD_DIR}"
    cmake3 -DCMAKE_INSTALL_PREFIX="${INSTALL_DIR}" -DPYTHON_EXECUTABLE=$(which python3) "${SRC_DIR}"
}

function build_all() {
    cd "${BUILD_DIR}"
    cmake3 --jobs=2 install
}

function cleanup() {
    cd /
    rm -rf "${WORK_DIR}"
    yum clean all
    rm -rf /tmp/*
}

initialize
get_sources
configure_build
build_all
cleanup


