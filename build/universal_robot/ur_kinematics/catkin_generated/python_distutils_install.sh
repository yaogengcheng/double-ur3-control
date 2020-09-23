#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/asa/ygc_ur/src/universal_robot/ur_kinematics"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/asa/ygc_ur/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/asa/ygc_ur/install/lib/python2.7/dist-packages:/home/asa/ygc_ur/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/asa/ygc_ur/build" \
    "/usr/bin/python" \
    "/home/asa/ygc_ur/src/universal_robot/ur_kinematics/setup.py" \
    build --build-base "/home/asa/ygc_ur/build/universal_robot/ur_kinematics" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/asa/ygc_ur/install" --install-scripts="/home/asa/ygc_ur/install/bin"
