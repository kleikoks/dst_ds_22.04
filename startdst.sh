#!/bin/bash

game_dir="~/Steam/dstserver/bin64"
cluster_name="MyDediServer"

run_shared=(./dontstarve_dedicated_server_nullrenderer_x64)
run_shared+=(-cluster "$cluster_name")
run_shared+=(-monitor_parent_process $$)

cd "$game_dir"

"${run_shared[@]}" -shard Caves &
"${run_shared[@]}" -shard Master

