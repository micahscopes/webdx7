#!/bin/bash
rm dx7.* || true && \
  emmake make && \
  cp dx7.wasm.js ../../wilderplace-workspace/wilderplace/vendor/dx7/wasm/ && \
  cp dx7.js ../../wilderplace-workspace/wilderplace/vendor/dx7/wasm/ && \
  cp dx7.wasm.map ../../wilderplace-workspace/wilderplace/vendor/dx7/wasm/ && \
  rm -r ../../wilderplace-workspace/wilderplace/vendor/dx7/src/c || true && \
  rm -r ../../wilderplace-workspace/wilderplace/vendor/dx7/src/wamsdk || true && \
  cp -r ../src/c ../../wilderplace-workspace/wilderplace/vendor/dx7/src/ && \
  cp -r ../src/wamsdk ../../wilderplace-workspace/wilderplace/vendor/dx7/src/
