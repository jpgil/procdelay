read -p "Are you sure? You will download a BUNCH of files. " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo "Cool, no work to do. Bye."
    exit 0
fi

cd ../../data/raw/ANTENNA

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-01_18.16.48.847.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.48.847.gz da41-acsStartContainer_cppContainer_2017-07-01_18.16.48.847.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-01_18.16.48.847.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-01_20.06.49.894.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.49.894.gz da41-acsStartContainer_cppContainer_2017-07-01_20.06.49.894.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-01_20.06.49.894.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-01_22.45.35.715.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.35.715.gz da41-acsStartContainer_cppContainer_2017-07-01_22.45.35.715.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-01_22.45.35.715.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-03_20.37.03.645.gz
mv acsStartContainer_cppContainer_2017-07-03_20.37.03.645.gz da41-acsStartContainer_cppContainer_2017-07-03_20.37.03.645.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-03_20.37.03.645.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-03_21.43.00.460.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.00.460.gz da41-acsStartContainer_cppContainer_2017-07-03_21.43.00.460.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-03_21.43.00.460.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_19.22.44.226.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.44.226.gz da41-acsStartContainer_cppContainer_2017-07-05_19.22.44.226.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_19.22.44.226.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_19.44.33.199.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.33.199.gz da41-acsStartContainer_cppContainer_2017-07-05_19.44.33.199.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_19.44.33.199.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_19.56.28.307.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.28.307.gz da41-acsStartContainer_cppContainer_2017-07-05_19.56.28.307.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_19.56.28.307.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_21.11.36.377.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.36.377.gz da41-acsStartContainer_cppContainer_2017-07-05_21.11.36.377.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_21.11.36.377.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz da41-acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-05_21.51.45.672.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.45.672.gz da41-acsStartContainer_cppContainer_2017-07-05_21.51.45.672.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-05_21.51.45.672.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-07_20.39.24.481.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.24.481.gz da41-acsStartContainer_cppContainer_2017-07-07_20.39.24.481.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-07_20.39.24.481.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-07_21.01.00.244.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.00.244.gz da41-acsStartContainer_cppContainer_2017-07-07_21.01.00.244.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-07_21.01.00.244.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-08_23.23.22.439.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.22.439.gz da41-acsStartContainer_cppContainer_2017-07-08_23.23.22.439.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-08_23.23.22.439.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-09_23.55.57.037.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.57.037.gz da41-acsStartContainer_cppContainer_2017-07-09_23.55.57.037.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-09_23.55.57.037.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-10_00.15.06.909.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.06.909.gz da41-acsStartContainer_cppContainer_2017-07-10_00.15.06.909.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-10_00.15.06.909.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-10_16.41.42.710.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.42.710.gz da41-acsStartContainer_cppContainer_2017-07-10_16.41.42.710.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-10_16.41.42.710.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-10_17.03.21.896.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.21.896.gz da41-acsStartContainer_cppContainer_2017-07-10_17.03.21.896.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-10_17.03.21.896.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-10_19.30.53.992.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.53.992.gz da41-acsStartContainer_cppContainer_2017-07-10_19.30.53.992.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-10_19.30.53.992.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-11_19.55.20.766.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.20.766.gz da41-acsStartContainer_cppContainer_2017-07-11_19.55.20.766.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-11_19.55.20.766.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-11_20.41.42.314.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.42.314.gz da41-acsStartContainer_cppContainer_2017-07-11_20.41.42.314.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-11_20.41.42.314.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-12_00.14.00.201.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.00.201.gz da41-acsStartContainer_cppContainer_2017-07-12_00.14.00.201.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-12_00.14.00.201.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-12_00.40.21.648.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.21.648.gz da41-acsStartContainer_cppContainer_2017-07-12_00.40.21.648.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-12_00.40.21.648.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-12_23.14.11.857.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.11.857.gz da41-acsStartContainer_cppContainer_2017-07-12_23.14.11.857.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-12_23.14.11.857.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da41-abm/CONTROL/DA41/acsStartContainer_cppContainer_2017-07-12_23.38.37.443.gz
mv acsStartContainer_cppContainer_2017-07-12_23.38.37.443.gz da41-acsStartContainer_cppContainer_2017-07-12_23.38.37.443.gz
gunzip da41-acsStartContainer_cppContainer_2017-07-12_23.38.37.443.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-01_18.16.49.516.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.49.516.gz da43-acsStartContainer_cppContainer_2017-07-01_18.16.49.516.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-01_18.16.49.516.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-01_20.06.50.589.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.50.589.gz da43-acsStartContainer_cppContainer_2017-07-01_20.06.50.589.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-01_20.06.50.589.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-01_22.45.34.727.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.34.727.gz da43-acsStartContainer_cppContainer_2017-07-01_22.45.34.727.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-01_22.45.34.727.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-02_16.16.55.445.gz
mv acsStartContainer_cppContainer_2017-07-02_16.16.55.445.gz da43-acsStartContainer_cppContainer_2017-07-02_16.16.55.445.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-02_16.16.55.445.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-02_16.31.21.765.gz
mv acsStartContainer_cppContainer_2017-07-02_16.31.21.765.gz da43-acsStartContainer_cppContainer_2017-07-02_16.31.21.765.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-02_16.31.21.765.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-02_16.59.35.746.gz
mv acsStartContainer_cppContainer_2017-07-02_16.59.35.746.gz da43-acsStartContainer_cppContainer_2017-07-02_16.59.35.746.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-02_16.59.35.746.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-02_22.29.49.050.gz
mv acsStartContainer_cppContainer_2017-07-02_22.29.49.050.gz da43-acsStartContainer_cppContainer_2017-07-02_22.29.49.050.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-02_22.29.49.050.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-02_22.41.21.335.gz
mv acsStartContainer_cppContainer_2017-07-02_22.41.21.335.gz da43-acsStartContainer_cppContainer_2017-07-02_22.41.21.335.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-02_22.41.21.335.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-03_20.36.56.611.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.56.611.gz da43-acsStartContainer_cppContainer_2017-07-03_20.36.56.611.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-03_20.36.56.611.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-03_21.43.00.806.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.00.806.gz da43-acsStartContainer_cppContainer_2017-07-03_21.43.00.806.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-03_21.43.00.806.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_19.22.25.601.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.25.601.gz da43-acsStartContainer_cppContainer_2017-07-05_19.22.25.601.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_19.22.25.601.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_19.44.21.986.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.21.986.gz da43-acsStartContainer_cppContainer_2017-07-05_19.44.21.986.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_19.44.21.986.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_19.56.26.597.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.26.597.gz da43-acsStartContainer_cppContainer_2017-07-05_19.56.26.597.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_19.56.26.597.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_21.11.37.530.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.37.530.gz da43-acsStartContainer_cppContainer_2017-07-05_21.11.37.530.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_21.11.37.530.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz da43-acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-05_21.51.42.787.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.42.787.gz da43-acsStartContainer_cppContainer_2017-07-05_21.51.42.787.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-05_21.51.42.787.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-07_20.39.24.774.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.24.774.gz da43-acsStartContainer_cppContainer_2017-07-07_20.39.24.774.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-07_20.39.24.774.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-07_21.01.09.100.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.09.100.gz da43-acsStartContainer_cppContainer_2017-07-07_21.01.09.100.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-07_21.01.09.100.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-08_23.23.22.362.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.22.362.gz da43-acsStartContainer_cppContainer_2017-07-08_23.23.22.362.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-08_23.23.22.362.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-09_23.56.04.272.gz
mv acsStartContainer_cppContainer_2017-07-09_23.56.04.272.gz da43-acsStartContainer_cppContainer_2017-07-09_23.56.04.272.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-09_23.56.04.272.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_00.15.04.392.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.04.392.gz da43-acsStartContainer_cppContainer_2017-07-10_00.15.04.392.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_00.15.04.392.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_16.41.59.395.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.59.395.gz da43-acsStartContainer_cppContainer_2017-07-10_16.41.59.395.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_16.41.59.395.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_17.03.17.905.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.17.905.gz da43-acsStartContainer_cppContainer_2017-07-10_17.03.17.905.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_17.03.17.905.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_19.30.50.875.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.50.875.gz da43-acsStartContainer_cppContainer_2017-07-10_19.30.50.875.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_19.30.50.875.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_20.39.20.110.gz
mv acsStartContainer_cppContainer_2017-07-10_20.39.20.110.gz da43-acsStartContainer_cppContainer_2017-07-10_20.39.20.110.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_20.39.20.110.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-10_22.04.34.592.gz
mv acsStartContainer_cppContainer_2017-07-10_22.04.34.592.gz da43-acsStartContainer_cppContainer_2017-07-10_22.04.34.592.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-10_22.04.34.592.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-11_19.55.30.057.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.30.057.gz da43-acsStartContainer_cppContainer_2017-07-11_19.55.30.057.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-11_19.55.30.057.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-11_20.41.34.197.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.34.197.gz da43-acsStartContainer_cppContainer_2017-07-11_20.41.34.197.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-11_20.41.34.197.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-12_00.14.01.025.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.01.025.gz da43-acsStartContainer_cppContainer_2017-07-12_00.14.01.025.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-12_00.14.01.025.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-12_00.40.16.537.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.16.537.gz da43-acsStartContainer_cppContainer_2017-07-12_00.40.16.537.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-12_00.40.16.537.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da43-abm/CONTROL/DA43/acsStartContainer_cppContainer_2017-07-12_23.14.14.879.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.14.879.gz da43-acsStartContainer_cppContainer_2017-07-12_23.14.14.879.gz
gunzip da43-acsStartContainer_cppContainer_2017-07-12_23.14.14.879.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-01_18.17.04.386.gz
mv acsStartContainer_cppContainer_2017-07-01_18.17.04.386.gz da44-acsStartContainer_cppContainer_2017-07-01_18.17.04.386.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-01_18.17.04.386.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-01_20.07.03.521.gz
mv acsStartContainer_cppContainer_2017-07-01_20.07.03.521.gz da44-acsStartContainer_cppContainer_2017-07-01_20.07.03.521.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-01_20.07.03.521.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-01_22.45.31.558.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.31.558.gz da44-acsStartContainer_cppContainer_2017-07-01_22.45.31.558.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-01_22.45.31.558.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-03_20.37.01.665.gz
mv acsStartContainer_cppContainer_2017-07-03_20.37.01.665.gz da44-acsStartContainer_cppContainer_2017-07-03_20.37.01.665.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-03_20.37.01.665.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-03_21.43.03.417.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.03.417.gz da44-acsStartContainer_cppContainer_2017-07-03_21.43.03.417.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-03_21.43.03.417.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_19.22.26.123.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.26.123.gz da44-acsStartContainer_cppContainer_2017-07-05_19.22.26.123.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_19.22.26.123.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_19.44.32.640.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.32.640.gz da44-acsStartContainer_cppContainer_2017-07-05_19.44.32.640.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_19.44.32.640.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_19.56.31.927.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.31.927.gz da44-acsStartContainer_cppContainer_2017-07-05_19.56.31.927.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_19.56.31.927.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_21.11.36.661.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.36.661.gz da44-acsStartContainer_cppContainer_2017-07-05_21.11.36.661.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_21.11.36.661.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz da44-acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_21.12.48.989.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-05_21.51.46.068.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.46.068.gz da44-acsStartContainer_cppContainer_2017-07-05_21.51.46.068.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-05_21.51.46.068.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-07_20.39.24.708.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.24.708.gz da44-acsStartContainer_cppContainer_2017-07-07_20.39.24.708.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-07_20.39.24.708.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-07_21.00.59.001.gz
mv acsStartContainer_cppContainer_2017-07-07_21.00.59.001.gz da44-acsStartContainer_cppContainer_2017-07-07_21.00.59.001.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-07_21.00.59.001.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-08_23.23.23.406.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.23.406.gz da44-acsStartContainer_cppContainer_2017-07-08_23.23.23.406.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-08_23.23.23.406.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-09_23.55.57.778.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.57.778.gz da44-acsStartContainer_cppContainer_2017-07-09_23.55.57.778.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-09_23.55.57.778.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-10_00.15.06.635.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.06.635.gz da44-acsStartContainer_cppContainer_2017-07-10_00.15.06.635.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-10_00.15.06.635.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-10_16.41.47.704.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.47.704.gz da44-acsStartContainer_cppContainer_2017-07-10_16.41.47.704.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-10_16.41.47.704.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-10_17.03.19.374.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.19.374.gz da44-acsStartContainer_cppContainer_2017-07-10_17.03.19.374.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-10_17.03.19.374.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-10_19.30.52.892.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.52.892.gz da44-acsStartContainer_cppContainer_2017-07-10_19.30.52.892.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-10_19.30.52.892.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-11_19.55.29.359.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.29.359.gz da44-acsStartContainer_cppContainer_2017-07-11_19.55.29.359.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-11_19.55.29.359.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-11_20.41.39.309.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.39.309.gz da44-acsStartContainer_cppContainer_2017-07-11_20.41.39.309.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-11_20.41.39.309.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-12_00.14.03.595.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.03.595.gz da44-acsStartContainer_cppContainer_2017-07-12_00.14.03.595.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-12_00.14.03.595.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-12_00.40.15.056.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.15.056.gz da44-acsStartContainer_cppContainer_2017-07-12_00.40.15.056.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-12_00.40.15.056.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da44-abm/CONTROL/DA44/acsStartContainer_cppContainer_2017-07-12_23.14.15.983.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.15.983.gz da44-acsStartContainer_cppContainer_2017-07-12_23.14.15.983.gz
gunzip da44-acsStartContainer_cppContainer_2017-07-12_23.14.15.983.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-01_18.16.56.976.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.56.976.gz da50-acsStartContainer_cppContainer_2017-07-01_18.16.56.976.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-01_18.16.56.976.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-01_20.06.58.865.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.58.865.gz da50-acsStartContainer_cppContainer_2017-07-01_20.06.58.865.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-01_20.06.58.865.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-01_22.45.27.207.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.27.207.gz da50-acsStartContainer_cppContainer_2017-07-01_22.45.27.207.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-01_22.45.27.207.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-03_20.37.03.875.gz
mv acsStartContainer_cppContainer_2017-07-03_20.37.03.875.gz da50-acsStartContainer_cppContainer_2017-07-03_20.37.03.875.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-03_20.37.03.875.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-03_21.43.12.882.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.12.882.gz da50-acsStartContainer_cppContainer_2017-07-03_21.43.12.882.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-03_21.43.12.882.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_19.22.09.015.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.09.015.gz da50-acsStartContainer_cppContainer_2017-07-05_19.22.09.015.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_19.22.09.015.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_19.44.29.053.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.29.053.gz da50-acsStartContainer_cppContainer_2017-07-05_19.44.29.053.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_19.44.29.053.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_19.56.32.107.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.32.107.gz da50-acsStartContainer_cppContainer_2017-07-05_19.56.32.107.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_19.56.32.107.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_21.11.41.301.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.41.301.gz da50-acsStartContainer_cppContainer_2017-07-05_21.11.41.301.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_21.11.41.301.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_21.12.49.147.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.147.gz da50-acsStartContainer_cppContainer_2017-07-05_21.12.49.147.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_21.12.49.147.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-05_21.51.44.020.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.44.020.gz da50-acsStartContainer_cppContainer_2017-07-05_21.51.44.020.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-05_21.51.44.020.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-07_20.39.23.277.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.23.277.gz da50-acsStartContainer_cppContainer_2017-07-07_20.39.23.277.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-07_20.39.23.277.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-07_21.01.01.722.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.01.722.gz da50-acsStartContainer_cppContainer_2017-07-07_21.01.01.722.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-07_21.01.01.722.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-08_23.23.19.419.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.19.419.gz da50-acsStartContainer_cppContainer_2017-07-08_23.23.19.419.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-08_23.23.19.419.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-09_23.55.55.201.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.55.201.gz da50-acsStartContainer_cppContainer_2017-07-09_23.55.55.201.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-09_23.55.55.201.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-10_00.15.13.786.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.13.786.gz da50-acsStartContainer_cppContainer_2017-07-10_00.15.13.786.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-10_00.15.13.786.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-10_16.41.41.507.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.41.507.gz da50-acsStartContainer_cppContainer_2017-07-10_16.41.41.507.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-10_16.41.41.507.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-10_17.03.31.850.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.31.850.gz da50-acsStartContainer_cppContainer_2017-07-10_17.03.31.850.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-10_17.03.31.850.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-10_19.30.53.624.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.53.624.gz da50-acsStartContainer_cppContainer_2017-07-10_19.30.53.624.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-10_19.30.53.624.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-11_19.55.32.254.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.32.254.gz da50-acsStartContainer_cppContainer_2017-07-11_19.55.32.254.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-11_19.55.32.254.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-11_20.41.37.400.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.37.400.gz da50-acsStartContainer_cppContainer_2017-07-11_20.41.37.400.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-11_20.41.37.400.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-12_00.13.57.419.gz
mv acsStartContainer_cppContainer_2017-07-12_00.13.57.419.gz da50-acsStartContainer_cppContainer_2017-07-12_00.13.57.419.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-12_00.13.57.419.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-12_00.40.24.928.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.24.928.gz da50-acsStartContainer_cppContainer_2017-07-12_00.40.24.928.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-12_00.40.24.928.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da50-abm/CONTROL/DA50/acsStartContainer_cppContainer_2017-07-12_23.14.05.981.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.05.981.gz da50-acsStartContainer_cppContainer_2017-07-12_23.14.05.981.gz
gunzip da50-acsStartContainer_cppContainer_2017-07-12_23.14.05.981.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-01_18.16.52.203.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.52.203.gz da52-acsStartContainer_cppContainer_2017-07-01_18.16.52.203.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-01_18.16.52.203.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-01_20.06.54.680.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.54.680.gz da52-acsStartContainer_cppContainer_2017-07-01_20.06.54.680.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-01_20.06.54.680.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-01_22.45.35.556.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.35.556.gz da52-acsStartContainer_cppContainer_2017-07-01_22.45.35.556.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-01_22.45.35.556.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-03_20.36.59.873.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.59.873.gz da52-acsStartContainer_cppContainer_2017-07-03_20.36.59.873.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-03_20.36.59.873.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-03_21.43.10.448.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.10.448.gz da52-acsStartContainer_cppContainer_2017-07-03_21.43.10.448.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-03_21.43.10.448.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_19.22.28.957.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.28.957.gz da52-acsStartContainer_cppContainer_2017-07-05_19.22.28.957.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_19.22.28.957.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_19.44.28.167.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.28.167.gz da52-acsStartContainer_cppContainer_2017-07-05_19.44.28.167.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_19.44.28.167.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_19.56.28.140.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.28.140.gz da52-acsStartContainer_cppContainer_2017-07-05_19.56.28.140.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_19.56.28.140.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_21.11.39.995.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.39.995.gz da52-acsStartContainer_cppContainer_2017-07-05_21.11.39.995.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_21.11.39.995.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_21.12.49.145.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.145.gz da52-acsStartContainer_cppContainer_2017-07-05_21.12.49.145.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_21.12.49.145.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-05_21.51.43.941.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.43.941.gz da52-acsStartContainer_cppContainer_2017-07-05_21.51.43.941.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-05_21.51.43.941.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-07_18.35.35.663.gz
mv acsStartContainer_cppContainer_2017-07-07_18.35.35.663.gz da52-acsStartContainer_cppContainer_2017-07-07_18.35.35.663.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-07_18.35.35.663.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-07_20.39.23.639.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.23.639.gz da52-acsStartContainer_cppContainer_2017-07-07_20.39.23.639.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-07_20.39.23.639.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-07_21.01.00.218.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.00.218.gz da52-acsStartContainer_cppContainer_2017-07-07_21.01.00.218.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-07_21.01.00.218.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-07_22.36.02.272.gz
mv acsStartContainer_cppContainer_2017-07-07_22.36.02.272.gz da52-acsStartContainer_cppContainer_2017-07-07_22.36.02.272.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-07_22.36.02.272.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-08_23.23.20.355.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.20.355.gz da52-acsStartContainer_cppContainer_2017-07-08_23.23.20.355.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-08_23.23.20.355.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-09_23.55.59.103.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.59.103.gz da52-acsStartContainer_cppContainer_2017-07-09_23.55.59.103.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-09_23.55.59.103.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-10_00.15.13.519.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.13.519.gz da52-acsStartContainer_cppContainer_2017-07-10_00.15.13.519.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-10_00.15.13.519.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-10_16.41.59.283.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.59.283.gz da52-acsStartContainer_cppContainer_2017-07-10_16.41.59.283.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-10_16.41.59.283.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-10_17.03.30.439.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.30.439.gz da52-acsStartContainer_cppContainer_2017-07-10_17.03.30.439.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-10_17.03.30.439.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-10_19.30.50.051.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.50.051.gz da52-acsStartContainer_cppContainer_2017-07-10_19.30.50.051.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-10_19.30.50.051.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-11_19.55.33.965.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.33.965.gz da52-acsStartContainer_cppContainer_2017-07-11_19.55.33.965.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-11_19.55.33.965.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-11_20.41.38.918.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.38.918.gz da52-acsStartContainer_cppContainer_2017-07-11_20.41.38.918.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-11_20.41.38.918.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-12_00.14.02.194.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.02.194.gz da52-acsStartContainer_cppContainer_2017-07-12_00.14.02.194.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-12_00.14.02.194.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-12_00.40.16.290.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.16.290.gz da52-acsStartContainer_cppContainer_2017-07-12_00.40.16.290.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-12_00.40.16.290.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da52-abm/CONTROL/DA52/acsStartContainer_cppContainer_2017-07-12_23.14.12.395.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.12.395.gz da52-acsStartContainer_cppContainer_2017-07-12_23.14.12.395.gz
gunzip da52-acsStartContainer_cppContainer_2017-07-12_23.14.12.395.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-01_18.17.03.944.gz
mv acsStartContainer_cppContainer_2017-07-01_18.17.03.944.gz da56-acsStartContainer_cppContainer_2017-07-01_18.17.03.944.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-01_18.17.03.944.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-01_20.07.01.160.gz
mv acsStartContainer_cppContainer_2017-07-01_20.07.01.160.gz da56-acsStartContainer_cppContainer_2017-07-01_20.07.01.160.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-01_20.07.01.160.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-01_22.45.27.921.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.27.921.gz da56-acsStartContainer_cppContainer_2017-07-01_22.45.27.921.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-01_22.45.27.921.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-03_20.37.02.329.gz
mv acsStartContainer_cppContainer_2017-07-03_20.37.02.329.gz da56-acsStartContainer_cppContainer_2017-07-03_20.37.02.329.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-03_20.37.02.329.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-03_21.43.13.275.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.13.275.gz da56-acsStartContainer_cppContainer_2017-07-03_21.43.13.275.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-03_21.43.13.275.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_19.22.15.583.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.15.583.gz da56-acsStartContainer_cppContainer_2017-07-05_19.22.15.583.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_19.22.15.583.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_19.44.23.995.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.23.995.gz da56-acsStartContainer_cppContainer_2017-07-05_19.44.23.995.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_19.44.23.995.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_19.56.26.928.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.26.928.gz da56-acsStartContainer_cppContainer_2017-07-05_19.56.26.928.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_19.56.26.928.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_21.11.41.728.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.41.728.gz da56-acsStartContainer_cppContainer_2017-07-05_21.11.41.728.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_21.11.41.728.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz da56-acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-05_21.51.43.737.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.43.737.gz da56-acsStartContainer_cppContainer_2017-07-05_21.51.43.737.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-05_21.51.43.737.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-07_20.39.28.959.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.28.959.gz da56-acsStartContainer_cppContainer_2017-07-07_20.39.28.959.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-07_20.39.28.959.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-07_21.01.13.071.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.13.071.gz da56-acsStartContainer_cppContainer_2017-07-07_21.01.13.071.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-07_21.01.13.071.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-08_23.23.28.299.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.28.299.gz da56-acsStartContainer_cppContainer_2017-07-08_23.23.28.299.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-08_23.23.28.299.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-09_23.55.52.594.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.52.594.gz da56-acsStartContainer_cppContainer_2017-07-09_23.55.52.594.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-09_23.55.52.594.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-10_00.15.07.448.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.07.448.gz da56-acsStartContainer_cppContainer_2017-07-10_00.15.07.448.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-10_00.15.07.448.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-10_16.41.48.261.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.48.261.gz da56-acsStartContainer_cppContainer_2017-07-10_16.41.48.261.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-10_16.41.48.261.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-10_17.03.22.132.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.22.132.gz da56-acsStartContainer_cppContainer_2017-07-10_17.03.22.132.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-10_17.03.22.132.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-10_19.30.54.753.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.54.753.gz da56-acsStartContainer_cppContainer_2017-07-10_19.30.54.753.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-10_19.30.54.753.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-11_19.55.30.846.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.30.846.gz da56-acsStartContainer_cppContainer_2017-07-11_19.55.30.846.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-11_19.55.30.846.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-11_20.41.32.426.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.32.426.gz da56-acsStartContainer_cppContainer_2017-07-11_20.41.32.426.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-11_20.41.32.426.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-12_00.13.59.055.gz
mv acsStartContainer_cppContainer_2017-07-12_00.13.59.055.gz da56-acsStartContainer_cppContainer_2017-07-12_00.13.59.055.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-12_00.13.59.055.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-12_00.40.13.443.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.13.443.gz da56-acsStartContainer_cppContainer_2017-07-12_00.40.13.443.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-12_00.40.13.443.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da56-abm/CONTROL/DA56/acsStartContainer_cppContainer_2017-07-12_23.14.10.393.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.10.393.gz da56-acsStartContainer_cppContainer_2017-07-12_23.14.10.393.gz
gunzip da56-acsStartContainer_cppContainer_2017-07-12_23.14.10.393.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-01_18.16.49.049.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.49.049.gz da62-acsStartContainer_cppContainer_2017-07-01_18.16.49.049.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-01_18.16.49.049.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-01_20.06.49.958.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.49.958.gz da62-acsStartContainer_cppContainer_2017-07-01_20.06.49.958.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-01_20.06.49.958.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-01_22.45.36.985.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.36.985.gz da62-acsStartContainer_cppContainer_2017-07-01_22.45.36.985.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-01_22.45.36.985.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-03_20.36.54.607.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.54.607.gz da62-acsStartContainer_cppContainer_2017-07-03_20.36.54.607.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-03_20.36.54.607.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-03_21.43.01.851.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.01.851.gz da62-acsStartContainer_cppContainer_2017-07-03_21.43.01.851.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-03_21.43.01.851.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_19.22.44.235.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.44.235.gz da62-acsStartContainer_cppContainer_2017-07-05_19.22.44.235.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_19.22.44.235.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_19.44.28.745.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.28.745.gz da62-acsStartContainer_cppContainer_2017-07-05_19.44.28.745.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_19.44.28.745.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_19.56.32.156.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.32.156.gz da62-acsStartContainer_cppContainer_2017-07-05_19.56.32.156.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_19.56.32.156.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_21.11.41.092.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.41.092.gz da62-acsStartContainer_cppContainer_2017-07-05_21.11.41.092.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_21.11.41.092.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz da62-acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_21.12.48.993.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-05_21.51.36.801.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.36.801.gz da62-acsStartContainer_cppContainer_2017-07-05_21.51.36.801.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-05_21.51.36.801.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-07_20.39.22.672.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.22.672.gz da62-acsStartContainer_cppContainer_2017-07-07_20.39.22.672.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-07_20.39.22.672.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-07_21.01.00.675.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.00.675.gz da62-acsStartContainer_cppContainer_2017-07-07_21.01.00.675.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-07_21.01.00.675.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-08_23.23.10.579.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.10.579.gz da62-acsStartContainer_cppContainer_2017-07-08_23.23.10.579.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-08_23.23.10.579.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-09_23.56.04.159.gz
mv acsStartContainer_cppContainer_2017-07-09_23.56.04.159.gz da62-acsStartContainer_cppContainer_2017-07-09_23.56.04.159.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-09_23.56.04.159.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-10_00.15.06.379.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.06.379.gz da62-acsStartContainer_cppContainer_2017-07-10_00.15.06.379.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-10_00.15.06.379.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-10_16.41.55.944.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.55.944.gz da62-acsStartContainer_cppContainer_2017-07-10_16.41.55.944.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-10_16.41.55.944.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-10_17.03.18.552.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.18.552.gz da62-acsStartContainer_cppContainer_2017-07-10_17.03.18.552.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-10_17.03.18.552.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-10_19.30.53.100.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.53.100.gz da62-acsStartContainer_cppContainer_2017-07-10_19.30.53.100.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-10_19.30.53.100.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-11_19.55.31.381.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.31.381.gz da62-acsStartContainer_cppContainer_2017-07-11_19.55.31.381.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-11_19.55.31.381.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-11_20.41.42.251.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.42.251.gz da62-acsStartContainer_cppContainer_2017-07-11_20.41.42.251.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-11_20.41.42.251.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-12_00.14.02.682.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.02.682.gz da62-acsStartContainer_cppContainer_2017-07-12_00.14.02.682.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-12_00.14.02.682.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-12_00.40.17.979.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.17.979.gz da62-acsStartContainer_cppContainer_2017-07-12_00.40.17.979.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-12_00.40.17.979.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da62-abm/CONTROL/DA62/acsStartContainer_cppContainer_2017-07-12_23.14.11.937.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.11.937.gz da62-acsStartContainer_cppContainer_2017-07-12_23.14.11.937.gz
gunzip da62-acsStartContainer_cppContainer_2017-07-12_23.14.11.937.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-01_18.16.47.590.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.47.590.gz da64-acsStartContainer_cppContainer_2017-07-01_18.16.47.590.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-01_18.16.47.590.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-01_20.06.48.852.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.48.852.gz da64-acsStartContainer_cppContainer_2017-07-01_20.06.48.852.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-01_20.06.48.852.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-01_22.45.30.695.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.30.695.gz da64-acsStartContainer_cppContainer_2017-07-01_22.45.30.695.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-01_22.45.30.695.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-03_20.36.56.174.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.56.174.gz da64-acsStartContainer_cppContainer_2017-07-03_20.36.56.174.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-03_20.36.56.174.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-03_21.43.02.181.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.02.181.gz da64-acsStartContainer_cppContainer_2017-07-03_21.43.02.181.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-03_21.43.02.181.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_19.22.11.305.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.11.305.gz da64-acsStartContainer_cppContainer_2017-07-05_19.22.11.305.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_19.22.11.305.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_19.44.22.858.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.22.858.gz da64-acsStartContainer_cppContainer_2017-07-05_19.44.22.858.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_19.44.22.858.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_19.56.25.965.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.25.965.gz da64-acsStartContainer_cppContainer_2017-07-05_19.56.25.965.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_19.56.25.965.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_21.11.40.772.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.40.772.gz da64-acsStartContainer_cppContainer_2017-07-05_21.11.40.772.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_21.11.40.772.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz da64-acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_21.12.49.008.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-05_21.51.45.431.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.45.431.gz da64-acsStartContainer_cppContainer_2017-07-05_21.51.45.431.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-05_21.51.45.431.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-07_20.39.27.187.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.27.187.gz da64-acsStartContainer_cppContainer_2017-07-07_20.39.27.187.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-07_20.39.27.187.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-07_21.01.09.027.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.09.027.gz da64-acsStartContainer_cppContainer_2017-07-07_21.01.09.027.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-07_21.01.09.027.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-08_23.23.24.175.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.24.175.gz da64-acsStartContainer_cppContainer_2017-07-08_23.23.24.175.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-08_23.23.24.175.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-09_23.55.54.012.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.54.012.gz da64-acsStartContainer_cppContainer_2017-07-09_23.55.54.012.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-09_23.55.54.012.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-10_00.15.13.638.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.13.638.gz da64-acsStartContainer_cppContainer_2017-07-10_00.15.13.638.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-10_00.15.13.638.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-10_16.41.47.524.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.47.524.gz da64-acsStartContainer_cppContainer_2017-07-10_16.41.47.524.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-10_16.41.47.524.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-10_17.03.30.509.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.30.509.gz da64-acsStartContainer_cppContainer_2017-07-10_17.03.30.509.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-10_17.03.30.509.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-10_19.30.45.566.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.45.566.gz da64-acsStartContainer_cppContainer_2017-07-10_19.30.45.566.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-10_19.30.45.566.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-11_19.55.20.929.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.20.929.gz da64-acsStartContainer_cppContainer_2017-07-11_19.55.20.929.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-11_19.55.20.929.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-11_20.41.36.990.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.36.990.gz da64-acsStartContainer_cppContainer_2017-07-11_20.41.36.990.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-11_20.41.36.990.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-12_00.14.06.257.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.06.257.gz da64-acsStartContainer_cppContainer_2017-07-12_00.14.06.257.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-12_00.14.06.257.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-12_00.40.16.668.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.16.668.gz da64-acsStartContainer_cppContainer_2017-07-12_00.40.16.668.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-12_00.40.16.668.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/da64-abm/CONTROL/DA64/acsStartContainer_cppContainer_2017-07-12_23.14.18.101.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.18.101.gz da64-acsStartContainer_cppContainer_2017-07-12_23.14.18.101.gz
gunzip da64-acsStartContainer_cppContainer_2017-07-12_23.14.18.101.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-01_18.16.56.614.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.56.614.gz dv02-acsStartContainer_cppContainer_2017-07-01_18.16.56.614.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-01_18.16.56.614.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-01_20.06.58.503.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.58.503.gz dv02-acsStartContainer_cppContainer_2017-07-01_20.06.58.503.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-01_20.06.58.503.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-01_22.45.27.481.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.27.481.gz dv02-acsStartContainer_cppContainer_2017-07-01_22.45.27.481.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-01_22.45.27.481.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-03_20.36.58.181.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.58.181.gz dv02-acsStartContainer_cppContainer_2017-07-03_20.36.58.181.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-03_20.36.58.181.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-03_21.42.59.841.gz
mv acsStartContainer_cppContainer_2017-07-03_21.42.59.841.gz dv02-acsStartContainer_cppContainer_2017-07-03_21.42.59.841.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-03_21.42.59.841.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_19.22.24.388.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.24.388.gz dv02-acsStartContainer_cppContainer_2017-07-05_19.22.24.388.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_19.22.24.388.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_19.44.30.108.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.30.108.gz dv02-acsStartContainer_cppContainer_2017-07-05_19.44.30.108.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_19.44.30.108.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_19.56.23.599.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.23.599.gz dv02-acsStartContainer_cppContainer_2017-07-05_19.56.23.599.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_19.56.23.599.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_21.11.40.415.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.40.415.gz dv02-acsStartContainer_cppContainer_2017-07-05_21.11.40.415.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_21.11.40.415.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz dv02-acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-05_21.51.43.793.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.43.793.gz dv02-acsStartContainer_cppContainer_2017-07-05_21.51.43.793.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-05_21.51.43.793.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-07_20.39.23.425.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.23.425.gz dv02-acsStartContainer_cppContainer_2017-07-07_20.39.23.425.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-07_20.39.23.425.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-07_21.01.13.755.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.13.755.gz dv02-acsStartContainer_cppContainer_2017-07-07_21.01.13.755.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-07_21.01.13.755.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-08_23.23.13.069.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.13.069.gz dv02-acsStartContainer_cppContainer_2017-07-08_23.23.13.069.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-08_23.23.13.069.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-09_23.56.04.096.gz
mv acsStartContainer_cppContainer_2017-07-09_23.56.04.096.gz dv02-acsStartContainer_cppContainer_2017-07-09_23.56.04.096.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-09_23.56.04.096.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_00.15.07.941.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.07.941.gz dv02-acsStartContainer_cppContainer_2017-07-10_00.15.07.941.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_00.15.07.941.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_16.41.50.218.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.50.218.gz dv02-acsStartContainer_cppContainer_2017-07-10_16.41.50.218.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_16.41.50.218.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_17.03.30.932.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.30.932.gz dv02-acsStartContainer_cppContainer_2017-07-10_17.03.30.932.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_17.03.30.932.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_17.53.30.131.gz
mv acsStartContainer_cppContainer_2017-07-10_17.53.30.131.gz dv02-acsStartContainer_cppContainer_2017-07-10_17.53.30.131.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_17.53.30.131.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_18.29.36.632.gz
mv acsStartContainer_cppContainer_2017-07-10_18.29.36.632.gz dv02-acsStartContainer_cppContainer_2017-07-10_18.29.36.632.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_18.29.36.632.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-10_19.30.48.851.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.48.851.gz dv02-acsStartContainer_cppContainer_2017-07-10_19.30.48.851.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-10_19.30.48.851.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_12.29.33.241.gz
mv acsStartContainer_cppContainer_2017-07-11_12.29.33.241.gz dv02-acsStartContainer_cppContainer_2017-07-11_12.29.33.241.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_12.29.33.241.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_12.45.20.756.gz
mv acsStartContainer_cppContainer_2017-07-11_12.45.20.756.gz dv02-acsStartContainer_cppContainer_2017-07-11_12.45.20.756.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_12.45.20.756.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_13.32.35.667.gz
mv acsStartContainer_cppContainer_2017-07-11_13.32.35.667.gz dv02-acsStartContainer_cppContainer_2017-07-11_13.32.35.667.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_13.32.35.667.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_13.50.11.581.gz
mv acsStartContainer_cppContainer_2017-07-11_13.50.11.581.gz dv02-acsStartContainer_cppContainer_2017-07-11_13.50.11.581.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_13.50.11.581.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_14.26.14.880.gz
mv acsStartContainer_cppContainer_2017-07-11_14.26.14.880.gz dv02-acsStartContainer_cppContainer_2017-07-11_14.26.14.880.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_14.26.14.880.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_19.55.26.552.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.26.552.gz dv02-acsStartContainer_cppContainer_2017-07-11_19.55.26.552.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_19.55.26.552.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-11_20.41.42.578.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.42.578.gz dv02-acsStartContainer_cppContainer_2017-07-11_20.41.42.578.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-11_20.41.42.578.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-12_00.14.02.922.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.02.922.gz dv02-acsStartContainer_cppContainer_2017-07-12_00.14.02.922.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-12_00.14.02.922.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-12_00.40.19.571.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.19.571.gz dv02-acsStartContainer_cppContainer_2017-07-12_00.40.19.571.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-12_00.40.19.571.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-12_16.28.50.242.gz
mv acsStartContainer_cppContainer_2017-07-12_16.28.50.242.gz dv02-acsStartContainer_cppContainer_2017-07-12_16.28.50.242.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-12_16.28.50.242.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv02-abm/CONTROL/DV02/acsStartContainer_cppContainer_2017-07-12_23.14.11.549.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.11.549.gz dv02-acsStartContainer_cppContainer_2017-07-12_23.14.11.549.gz
gunzip dv02-acsStartContainer_cppContainer_2017-07-12_23.14.11.549.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-01_18.16.48.051.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.48.051.gz dv07-acsStartContainer_cppContainer_2017-07-01_18.16.48.051.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-01_18.16.48.051.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-01_20.06.49.300.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.49.300.gz dv07-acsStartContainer_cppContainer_2017-07-01_20.06.49.300.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-01_20.06.49.300.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-01_22.45.40.930.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.40.930.gz dv07-acsStartContainer_cppContainer_2017-07-01_22.45.40.930.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-01_22.45.40.930.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-02/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-02_16.47.08.465.gz
mv acsStartContainer_cppContainer_2017-07-02_16.47.08.465.gz dv07-acsStartContainer_cppContainer_2017-07-02_16.47.08.465.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-02_16.47.08.465.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-03_20.36.55.029.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.55.029.gz dv07-acsStartContainer_cppContainer_2017-07-03_20.36.55.029.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-03_20.36.55.029.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-03_21.43.13.185.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.13.185.gz dv07-acsStartContainer_cppContainer_2017-07-03_21.43.13.185.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-03_21.43.13.185.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_19.22.25.082.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.25.082.gz dv07-acsStartContainer_cppContainer_2017-07-05_19.22.25.082.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_19.22.25.082.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_19.44.27.201.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.27.201.gz dv07-acsStartContainer_cppContainer_2017-07-05_19.44.27.201.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_19.44.27.201.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_19.56.30.147.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.30.147.gz dv07-acsStartContainer_cppContainer_2017-07-05_19.56.30.147.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_19.56.30.147.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_21.11.34.183.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.34.183.gz dv07-acsStartContainer_cppContainer_2017-07-05_21.11.34.183.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_21.11.34.183.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_21.12.49.142.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.142.gz dv07-acsStartContainer_cppContainer_2017-07-05_21.12.49.142.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_21.12.49.142.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-05_21.51.43.099.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.43.099.gz dv07-acsStartContainer_cppContainer_2017-07-05_21.51.43.099.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-05_21.51.43.099.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-07_20.39.22.312.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.22.312.gz dv07-acsStartContainer_cppContainer_2017-07-07_20.39.22.312.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-07_20.39.22.312.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-07_21.01.13.000.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.13.000.gz dv07-acsStartContainer_cppContainer_2017-07-07_21.01.13.000.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-07_21.01.13.000.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-08_23.23.23.016.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.23.016.gz dv07-acsStartContainer_cppContainer_2017-07-08_23.23.23.016.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-08_23.23.23.016.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-09_23.55.53.034.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.53.034.gz dv07-acsStartContainer_cppContainer_2017-07-09_23.55.53.034.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-09_23.55.53.034.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-10_00.15.12.232.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.12.232.gz dv07-acsStartContainer_cppContainer_2017-07-10_00.15.12.232.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-10_00.15.12.232.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-10_18.26.03.486.gz
mv acsStartContainer_cppContainer_2017-07-10_18.26.03.486.gz dv07-acsStartContainer_cppContainer_2017-07-10_18.26.03.486.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-10_18.26.03.486.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-10_19.30.51.766.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.51.766.gz dv07-acsStartContainer_cppContainer_2017-07-10_19.30.51.766.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-10_19.30.51.766.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-11_19.55.30.123.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.30.123.gz dv07-acsStartContainer_cppContainer_2017-07-11_19.55.30.123.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-11_19.55.30.123.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-11_20.41.34.552.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.34.552.gz dv07-acsStartContainer_cppContainer_2017-07-11_20.41.34.552.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-11_20.41.34.552.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-12_00.14.03.722.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.03.722.gz dv07-acsStartContainer_cppContainer_2017-07-12_00.14.03.722.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-12_00.14.03.722.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-12_00.40.12.540.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.12.540.gz dv07-acsStartContainer_cppContainer_2017-07-12_00.40.12.540.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-12_00.40.12.540.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv07-abm/CONTROL/DV07/acsStartContainer_cppContainer_2017-07-12_23.14.06.697.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.06.697.gz dv07-acsStartContainer_cppContainer_2017-07-12_23.14.06.697.gz
gunzip dv07-acsStartContainer_cppContainer_2017-07-12_23.14.06.697.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-01_18.16.52.999.gz
mv acsStartContainer_cppContainer_2017-07-01_18.16.52.999.gz dv13-acsStartContainer_cppContainer_2017-07-01_18.16.52.999.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-01_18.16.52.999.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-01_20.06.55.149.gz
mv acsStartContainer_cppContainer_2017-07-01_20.06.55.149.gz dv13-acsStartContainer_cppContainer_2017-07-01_20.06.55.149.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-01_20.06.55.149.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-01_22.45.33.484.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.33.484.gz dv13-acsStartContainer_cppContainer_2017-07-01_22.45.33.484.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-01_22.45.33.484.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-03_20.36.59.377.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.59.377.gz dv13-acsStartContainer_cppContainer_2017-07-03_20.36.59.377.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-03_20.36.59.377.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-03_21.43.02.446.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.02.446.gz dv13-acsStartContainer_cppContainer_2017-07-03_21.43.02.446.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-03_21.43.02.446.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_19.22.22.035.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.22.035.gz dv13-acsStartContainer_cppContainer_2017-07-05_19.22.22.035.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_19.22.22.035.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_19.44.21.729.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.21.729.gz dv13-acsStartContainer_cppContainer_2017-07-05_19.44.21.729.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_19.44.21.729.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_19.56.31.481.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.31.481.gz dv13-acsStartContainer_cppContainer_2017-07-05_19.56.31.481.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_19.56.31.481.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_21.11.40.358.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.40.358.gz dv13-acsStartContainer_cppContainer_2017-07-05_21.11.40.358.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_21.11.40.358.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_21.12.49.027.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.027.gz dv13-acsStartContainer_cppContainer_2017-07-05_21.12.49.027.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_21.12.49.027.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-05_21.51.46.139.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.46.139.gz dv13-acsStartContainer_cppContainer_2017-07-05_21.51.46.139.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-05_21.51.46.139.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-07_20.39.27.038.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.27.038.gz dv13-acsStartContainer_cppContainer_2017-07-07_20.39.27.038.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-07_20.39.27.038.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-07_21.00.58.894.gz
mv acsStartContainer_cppContainer_2017-07-07_21.00.58.894.gz dv13-acsStartContainer_cppContainer_2017-07-07_21.00.58.894.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-07_21.00.58.894.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-08_23.23.20.905.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.20.905.gz dv13-acsStartContainer_cppContainer_2017-07-08_23.23.20.905.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-08_23.23.20.905.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-09_23.55.57.255.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.57.255.gz dv13-acsStartContainer_cppContainer_2017-07-09_23.55.57.255.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-09_23.55.57.255.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-10_00.15.15.006.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.15.006.gz dv13-acsStartContainer_cppContainer_2017-07-10_00.15.15.006.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-10_00.15.15.006.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-10_16.41.45.937.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.45.937.gz dv13-acsStartContainer_cppContainer_2017-07-10_16.41.45.937.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-10_16.41.45.937.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-10_17.03.19.773.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.19.773.gz dv13-acsStartContainer_cppContainer_2017-07-10_17.03.19.773.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-10_17.03.19.773.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-10_19.30.50.429.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.50.429.gz dv13-acsStartContainer_cppContainer_2017-07-10_19.30.50.429.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-10_19.30.50.429.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-11_19.55.34.553.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.34.553.gz dv13-acsStartContainer_cppContainer_2017-07-11_19.55.34.553.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-11_19.55.34.553.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-11_20.41.39.377.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.39.377.gz dv13-acsStartContainer_cppContainer_2017-07-11_20.41.39.377.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-11_20.41.39.377.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-12_00.13.59.015.gz
mv acsStartContainer_cppContainer_2017-07-12_00.13.59.015.gz dv13-acsStartContainer_cppContainer_2017-07-12_00.13.59.015.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-12_00.13.59.015.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-12_00.40.21.087.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.21.087.gz dv13-acsStartContainer_cppContainer_2017-07-12_00.40.21.087.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-12_00.40.21.087.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv13-abm/CONTROL/DV13/acsStartContainer_cppContainer_2017-07-12_23.14.07.598.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.07.598.gz dv13-acsStartContainer_cppContainer_2017-07-12_23.14.07.598.gz
gunzip dv13-acsStartContainer_cppContainer_2017-07-12_23.14.07.598.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-01_18.17.03.539.gz
mv acsStartContainer_cppContainer_2017-07-01_18.17.03.539.gz dv22-acsStartContainer_cppContainer_2017-07-01_18.17.03.539.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-01_18.17.03.539.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-01_20.07.00.790.gz
mv acsStartContainer_cppContainer_2017-07-01_20.07.00.790.gz dv22-acsStartContainer_cppContainer_2017-07-01_20.07.00.790.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-01_20.07.00.790.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-01/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-01_22.45.32.937.gz
mv acsStartContainer_cppContainer_2017-07-01_22.45.32.937.gz dv22-acsStartContainer_cppContainer_2017-07-01_22.45.32.937.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-01_22.45.32.937.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-03_20.36.58.974.gz
mv acsStartContainer_cppContainer_2017-07-03_20.36.58.974.gz dv22-acsStartContainer_cppContainer_2017-07-03_20.36.58.974.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-03_20.36.58.974.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-03_21.43.02.772.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.02.772.gz dv22-acsStartContainer_cppContainer_2017-07-03_21.43.02.772.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-03_21.43.02.772.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_19.22.24.689.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.24.689.gz dv22-acsStartContainer_cppContainer_2017-07-05_19.22.24.689.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_19.22.24.689.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_19.44.33.393.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.33.393.gz dv22-acsStartContainer_cppContainer_2017-07-05_19.44.33.393.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_19.44.33.393.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_19.56.32.973.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.32.973.gz dv22-acsStartContainer_cppContainer_2017-07-05_19.56.32.973.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_19.56.32.973.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_21.11.37.892.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.37.892.gz dv22-acsStartContainer_cppContainer_2017-07-05_21.11.37.892.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_21.11.37.892.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz dv22-acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_21.12.49.143.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-05_21.51.39.520.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.39.520.gz dv22-acsStartContainer_cppContainer_2017-07-05_21.51.39.520.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-05_21.51.39.520.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-07_20.39.21.919.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.21.919.gz dv22-acsStartContainer_cppContainer_2017-07-07_20.39.21.919.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-07_20.39.21.919.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-07_21.01.08.711.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.08.711.gz dv22-acsStartContainer_cppContainer_2017-07-07_21.01.08.711.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-07_21.01.08.711.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-08_23.23.14.264.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.14.264.gz dv22-acsStartContainer_cppContainer_2017-07-08_23.23.14.264.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-08_23.23.14.264.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-09_23.55.52.178.gz
mv acsStartContainer_cppContainer_2017-07-09_23.55.52.178.gz dv22-acsStartContainer_cppContainer_2017-07-09_23.55.52.178.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-09_23.55.52.178.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-10_00.15.05.098.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.05.098.gz dv22-acsStartContainer_cppContainer_2017-07-10_00.15.05.098.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-10_00.15.05.098.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-10_16.41.51.021.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.51.021.gz dv22-acsStartContainer_cppContainer_2017-07-10_16.41.51.021.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-10_16.41.51.021.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-10_17.03.27.320.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.27.320.gz dv22-acsStartContainer_cppContainer_2017-07-10_17.03.27.320.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-10_17.03.27.320.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-10_19.30.54.202.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.54.202.gz dv22-acsStartContainer_cppContainer_2017-07-10_19.30.54.202.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-10_19.30.54.202.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-11_19.55.33.839.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.33.839.gz dv22-acsStartContainer_cppContainer_2017-07-11_19.55.33.839.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-11_19.55.33.839.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-11_20.41.38.256.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.38.256.gz dv22-acsStartContainer_cppContainer_2017-07-11_20.41.38.256.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-11_20.41.38.256.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-12_00.13.56.440.gz
mv acsStartContainer_cppContainer_2017-07-12_00.13.56.440.gz dv22-acsStartContainer_cppContainer_2017-07-12_00.13.56.440.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-12_00.13.56.440.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-12_00.40.17.993.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.17.993.gz dv22-acsStartContainer_cppContainer_2017-07-12_00.40.17.993.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-12_00.40.17.993.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv22-abm/CONTROL/DV22/acsStartContainer_cppContainer_2017-07-12_23.14.09.800.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.09.800.gz dv22-acsStartContainer_cppContainer_2017-07-12_23.14.09.800.gz
gunzip dv22-acsStartContainer_cppContainer_2017-07-12_23.14.09.800.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-03_18.59.31.399.gz
mv acsStartContainer_cppContainer_2017-07-03_18.59.31.399.gz dv25-acsStartContainer_cppContainer_2017-07-03_18.59.31.399.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-03_18.59.31.399.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-03_20.37.01.535.gz
mv acsStartContainer_cppContainer_2017-07-03_20.37.01.535.gz dv25-acsStartContainer_cppContainer_2017-07-03_20.37.01.535.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-03_20.37.01.535.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-03_21.43.00.125.gz
mv acsStartContainer_cppContainer_2017-07-03_21.43.00.125.gz dv25-acsStartContainer_cppContainer_2017-07-03_21.43.00.125.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-03_21.43.00.125.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-03/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-03_23.36.20.966.gz
mv acsStartContainer_cppContainer_2017-07-03_23.36.20.966.gz dv25-acsStartContainer_cppContainer_2017-07-03_23.36.20.966.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-03_23.36.20.966.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-04/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-04_00.03.34.418.gz
mv acsStartContainer_cppContainer_2017-07-04_00.03.34.418.gz dv25-acsStartContainer_cppContainer_2017-07-04_00.03.34.418.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-04_00.03.34.418.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_19.22.13.541.gz
mv acsStartContainer_cppContainer_2017-07-05_19.22.13.541.gz dv25-acsStartContainer_cppContainer_2017-07-05_19.22.13.541.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_19.22.13.541.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_19.44.21.593.gz
mv acsStartContainer_cppContainer_2017-07-05_19.44.21.593.gz dv25-acsStartContainer_cppContainer_2017-07-05_19.44.21.593.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_19.44.21.593.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_19.56.29.316.gz
mv acsStartContainer_cppContainer_2017-07-05_19.56.29.316.gz dv25-acsStartContainer_cppContainer_2017-07-05_19.56.29.316.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_19.56.29.316.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_21.11.38.913.gz
mv acsStartContainer_cppContainer_2017-07-05_21.11.38.913.gz dv25-acsStartContainer_cppContainer_2017-07-05_21.11.38.913.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_21.11.38.913.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_21.12.49.039.gz
mv acsStartContainer_cppContainer_2017-07-05_21.12.49.039.gz dv25-acsStartContainer_cppContainer_2017-07-05_21.12.49.039.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_21.12.49.039.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-05/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-05_21.51.43.910.gz
mv acsStartContainer_cppContainer_2017-07-05_21.51.43.910.gz dv25-acsStartContainer_cppContainer_2017-07-05_21.51.43.910.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-05_21.51.43.910.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-07_20.39.29.447.gz
mv acsStartContainer_cppContainer_2017-07-07_20.39.29.447.gz dv25-acsStartContainer_cppContainer_2017-07-07_20.39.29.447.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-07_20.39.29.447.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-07/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-07_21.01.05.943.gz
mv acsStartContainer_cppContainer_2017-07-07_21.01.05.943.gz dv25-acsStartContainer_cppContainer_2017-07-07_21.01.05.943.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-07_21.01.05.943.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-08/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-08_23.23.14.080.gz
mv acsStartContainer_cppContainer_2017-07-08_23.23.14.080.gz dv25-acsStartContainer_cppContainer_2017-07-08_23.23.14.080.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-08_23.23.14.080.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-09/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-09_23.56.03.359.gz
mv acsStartContainer_cppContainer_2017-07-09_23.56.03.359.gz dv25-acsStartContainer_cppContainer_2017-07-09_23.56.03.359.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-09_23.56.03.359.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_00.15.05.878.gz
mv acsStartContainer_cppContainer_2017-07-10_00.15.05.878.gz dv25-acsStartContainer_cppContainer_2017-07-10_00.15.05.878.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_00.15.05.878.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_16.41.47.461.gz
mv acsStartContainer_cppContainer_2017-07-10_16.41.47.461.gz dv25-acsStartContainer_cppContainer_2017-07-10_16.41.47.461.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_16.41.47.461.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_17.03.32.841.gz
mv acsStartContainer_cppContainer_2017-07-10_17.03.32.841.gz dv25-acsStartContainer_cppContainer_2017-07-10_17.03.32.841.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_17.03.32.841.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_17.12.59.636.gz
mv acsStartContainer_cppContainer_2017-07-10_17.12.59.636.gz dv25-acsStartContainer_cppContainer_2017-07-10_17.12.59.636.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_17.12.59.636.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_19.30.47.674.gz
mv acsStartContainer_cppContainer_2017-07-10_19.30.47.674.gz dv25-acsStartContainer_cppContainer_2017-07-10_19.30.47.674.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_19.30.47.674.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_20.43.06.773.gz
mv acsStartContainer_cppContainer_2017-07-10_20.43.06.773.gz dv25-acsStartContainer_cppContainer_2017-07-10_20.43.06.773.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_20.43.06.773.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-10/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-10_20.56.06.754.gz
mv acsStartContainer_cppContainer_2017-07-10_20.56.06.754.gz dv25-acsStartContainer_cppContainer_2017-07-10_20.56.06.754.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-10_20.56.06.754.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-11_19.55.26.410.gz
mv acsStartContainer_cppContainer_2017-07-11_19.55.26.410.gz dv25-acsStartContainer_cppContainer_2017-07-11_19.55.26.410.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-11_19.55.26.410.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-11_20.41.40.861.gz
mv acsStartContainer_cppContainer_2017-07-11_20.41.40.861.gz dv25-acsStartContainer_cppContainer_2017-07-11_20.41.40.861.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-11_20.41.40.861.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-11/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-11_20.55.42.275.gz
mv acsStartContainer_cppContainer_2017-07-11_20.55.42.275.gz dv25-acsStartContainer_cppContainer_2017-07-11_20.55.42.275.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-11_20.55.42.275.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-12_00.14.04.823.gz
mv acsStartContainer_cppContainer_2017-07-12_00.14.04.823.gz dv25-acsStartContainer_cppContainer_2017-07-12_00.14.04.823.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-12_00.14.04.823.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-12_00.40.12.586.gz
mv acsStartContainer_cppContainer_2017-07-12_00.40.12.586.gz dv25-acsStartContainer_cppContainer_2017-07-12_00.40.12.586.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-12_00.40.12.586.gz
sleep 0.1) &

(wget http://computing-logs.aiv.alma.cl/APE1/CONTAINER/2017-07-12/alma/logs/dv25-abm/CONTROL/DV25/acsStartContainer_cppContainer_2017-07-12_23.14.15.475.gz
mv acsStartContainer_cppContainer_2017-07-12_23.14.15.475.gz dv25-acsStartContainer_cppContainer_2017-07-12_23.14.15.475.gz
gunzip dv25-acsStartContainer_cppContainer_2017-07-12_23.14.15.475.gz
sleep 0.1) &

