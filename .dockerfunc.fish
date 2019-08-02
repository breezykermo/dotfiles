#!/usr/bin/env fish

function newsboat
    docker run -it \
        --mount type=bind,source=$HOME/.newsboat,target=/home/builder/.newsboat \
        --mount type=bind,source=/home/lk/code/lib/newsboat,target=/home/builder/src \
        newsboat-ubuntu18.04-i686:latest \
        /home/builder/src/newsboat
end

