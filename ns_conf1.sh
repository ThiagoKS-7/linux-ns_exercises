sudo ip netns add namespace1 # adciona ns
sudo ip netns exec namespace1 ip link set dev lo up
sudo ip link add v-enp2s0 type veth peer name v-eth0 # adiciona interface virtual
sudo ip link set v-eth0 netns namespace1
sudo ip -n namespace1 addr add 10.0.1.0/24 dev v-eth0
sudo ip -n namespace1 link set v-eth0 up