cd scientific && docker build -t mira/scientific .
cd ../spark && docker build -t mira/spark .
cd ../ipython-spark && docker build -t mira/ispark .

