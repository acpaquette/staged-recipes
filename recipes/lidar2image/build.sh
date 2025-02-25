export ISISROOT=$CONDA_PREFIX
$PYTHON -m pip install . --prefix=$PREFIX

cd "${SRC_DIR}/lidar2image_processing"
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -GNinja ..
ninja install

cd "${SRC_DIR}/lidar_processing/"
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -GNinja ..
ninja install