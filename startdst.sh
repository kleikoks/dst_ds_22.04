#!/bin/bash

install_dir="$HOME/Steam/dstserver"
cluster_name="MyDediServer"

run_shared=(~/$install_dir/bin64/dontstarve_dedicated_server_nullrenderer_x64)
run_shared+=(-console)
run_shared+=(-cluster "$cluster_name")
run_shared+=(-monitor_parent_process $$)

".~/Steam/dstserver/bin64/dontstarve_dedicated_server_nullrenderer_x64 -console -cluster '$cluster_name' -shard Caves -monitor_parent_process" &
".~/Steam/dstserver/bin64/dontstarve_dedicated_server_nullrenderer_x64 -console -cluster '$cluster_name' -shard Master -monitor_parent_process"
