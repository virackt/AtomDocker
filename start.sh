 docker build . --tag atomjs
 winpty docker run -it -v /c:/docker/nodejs18/wallet.json:/home/Atom/atomicals-js-master/wallet.json --name atom_docker atomjs