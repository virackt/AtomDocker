for i in {1..10}
do
  docker exec atom_atom-$i\_1 yarn cli wallet-init
  done