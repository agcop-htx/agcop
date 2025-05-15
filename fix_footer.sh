#!/bin/bash

# Script to fix duplicate footer tags in all HTML files

# Function to fix a page
fix_footer() {
  local file=$1
  
  # Replace duplicate footer tags with a single footer tag
  sed -i 's/<footer>[ ]*<footer>/<footer>/g' "$file"
}

# Fix index.html
fix_footer "/home/buteos/websites/agcop/index.html"
echo "Fixed index.html"

# Fix all HTML files in the pages directory
for file in /home/buteos/websites/agcop/pages/*.html; do
  echo "Fixing $file"
  fix_footer "$file"
done

echo "All pages fixed with correct footer"