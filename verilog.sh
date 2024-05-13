# For ease of working with Verilog projects by Mehedi Hasan
# in windows use git bash to run this script

#!/bin/bash

# Get a list of directories
dirs=(*/)
# Present a menu to select a directory
select dir in "${dirs[@]}"; do
  if [[ -n $dir ]]; then
    cd "$dir"
    break
  fi
done

# Ask if the project has a dump file
read -p "Does the project have a dump file? (y/n) " has_dump_file
dump_file_name=""
if [[ $has_dump_file == "y" ]]; then
  read -p "Enter the dump file name: " dump_file_name
fi

# Run iverilog and vvp
iverilog_files=(*.v)
iverilog -o output.out "${iverilog_files[@]}"
vvp output.out

# If a dump file was specified, run gtkwave
if [[ -n $dump_file_name ]]; then
  gtkwave "$dump_file_name.vcd"
fi