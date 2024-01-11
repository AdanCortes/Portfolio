#!/bin/bash
SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd -P)

function update {
  PROJECT_NAME=$(basename $PORTFOLIO_DIR)
  mkdir -p "$PORTFOLIO_DIR/docs/img"
  README_FILE="$PROJECT_DIR/docs/README.rst"
  cp "$README_FILE" "$PORTFOLIO_DIR/docs"
  cd "$PROJECT_DIR/docs" && egrep "image::" "$README_FILE" | grep -o "img/.*" | xargs -I{} cp {} "$PORTFOLIO_DIR/docs/img"
  sed -i~ -e "s|.. image:: /docs|.. image:: /$PROJECT_NAME/docs|" "$SCRIPT_DIR/$PROJECT_NAME/docs/README.rst"
}

PROJECT_DIR="$HOME/Office/cocinadelgallo"
PORTFOLIO_DIR="$SCRIPT_DIR/portfolio/cocinadelgallo"
update 

PROJECT_DIR="$HOME/Office/legar/16desconton"
PORTFOLIO_DIR="$SCRIPT_DIR/portfolio/16desconton"
update 

