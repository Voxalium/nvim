
-- If fzf can't be built correctly, delete the build folder in nvim-data and exec:
cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build
