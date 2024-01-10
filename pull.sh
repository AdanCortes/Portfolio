#!/bin/bash
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd -P)

function update {
  mkdir -p "$PORTFOLIO_DIR/docs/img"
  README_FILE="$PROJECT_DIR/docs/README.rst"
  cp "$README_FILE" "$PORTFOLIO_DIR/docs"
  cd "$PROJECT_DIR/docs" && egrep "image::" "$README_FILE" | grep -o "img/.*" | xargs -I{} cp {} "$PORTFOLIO_DIR/docs/img"
}

PROJECT_DIR="$HOME/Office/cocinadelgallo"
PORTFOLIO_DIR="$HOME/Office/ants/portfolio/cocinadelgallo"
update 

PROJECT_DIR="$HOME/Office/legar/16desconton"
PORTFOLIO_DIR="$HOME/Office/ants/portfolio/16desconton"
update 

