hostname_master=$HOSTNAME
# hostname_prefix_array=("node-0" "node-1" "node-2" "node-3" "node-4" "node-5" "node-6" "node-7")
hostname_prefix_array=("node-15" "node-1" "node-2" "node-3" "node-4" "node-5" "node-6" "node-7" "node-8" "node-9" "node-10" "node-11" "node-12" "node-13" "node-14" "node-0")

for hostname_node in "${hostname_prefix_array[@]}"
do
    ssh ${hostname_master//node-0/$hostname_node} 'sudo reboot'
done

