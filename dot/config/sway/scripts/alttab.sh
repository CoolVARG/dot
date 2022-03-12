#!/usr/bin/env bash

swaymsg -t get_tree | jq -r '
        # descend to workspace or scratchpad
        .nodes[].nodes[]
        # save workspace name as .w
        | {"w": .name} + (
                if .nodes then # workspace
                        [recurse(.nodes[])]
                else # scratchpad
                        []
                end
                + .floating_nodes
                | .[]
                # select nodes with no children (windows)
                | select(.nodes==[])
        )
        | ((.id | tostring) + "\t "
        + "\t " +  .name)
        ' | awk '!/i3_scratch/' | wofi --show dmenu --prompt='Focus a window' | {
    read -r id name
    swaymsg "[con_id=$id]" focus
}