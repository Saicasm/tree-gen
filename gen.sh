#!/bin/bash

# Check if a directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Store the tree output in a variable
tree_output=$(tree -F $1 | sed 's/\xc2\xa0/ /g')

# Output Markdown formatted tree
echo -e "## Directory Tree\n\`\`\`\n$tree_output\`\`\`\n" > directory_tree.md
