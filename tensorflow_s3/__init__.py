import os

import tensorflow as tf


tf.experimental.register_filesystem_plugin(os.path.join(os.path.dirname(__file__), "libtensorflow_s3.so"))
