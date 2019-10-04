#!/usr/bin/env bash


case "$1" in
    stop)
        docker stop open-pocket-backend
    ;;
    status)
        ssh docker ps -a
    ;;
    build)
        docker build -t open-pocket-backend:latest .
    ;;
    run)
    docker run -it --name open-pocket-backend --rm --mount type=bind,src=`pwd`/web_archive,dst=/opt/web_archive -p 9090:9090 open-pocket-backend
    ;;
    *)
        echo "Usage: $0 {run|stop|status|build}"
        echo ""
        echo "stop -- stops service"
        echo "status -- gives you information about running services"
        echo "build -- build new container locally"
        echo "run -- run Docker containter locally"
        echo ""
            exit 1
        ;;
esac

