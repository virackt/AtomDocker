for i in {1..10}
do
  docker cp atom_atom-$i\_1:/app/wallet.json wallet$i.json
  done