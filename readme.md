
-- If fzf can't be built correctly, delete the build folder in nvim-data and exec:
cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build

-- For java language server, make sure to install maven with choco or scoop.
