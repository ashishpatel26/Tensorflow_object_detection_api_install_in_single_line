mkdir -p Tensorflow
cd Tensorflow/
git clone --depth 1 https://github.com/tensorflow/models
cd models/research/
pip install --upgrade pip
protoc object_detection/protos/*.proto --python_out=.
cp object_detection/packages/tf2/setup.py .
python -m pip install .
python /content/Tensorflow/models/research/object_detection/builders/model_builder_tf2_test.py