# jupyter-pyspark-alpine-docker
Pyspark inside jupyter notebooks in the lightweight alpine-linux docker image. Inspired on https://github.com/riyadparvez/spark-in-docker

Configure the volumes/initial directory to use your files and data.

`docker-compose up jupyter` will run a jupyter notebook with pyspark.

To initialize the SparkContext use the preinstalled `findspark`
```python
masterAddr = "spark://172.20.0.2:7077"
import findspark
findspark.init()
from pyspark import SparkContext
sc = SparkContext(appName="WordCount", master=masterAddr)
```
