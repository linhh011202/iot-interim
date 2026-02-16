#!/bin/bash
echo "Installing LaTeX dependencies..."
sudo apt-get update
sudo apt-get install -y texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-science latexmk chktex
echo "Installation complete."
