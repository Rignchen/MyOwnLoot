@echo off
zip -i "pack.mcmeta", "data", "LICENSE", "README.md" -e "__pycache__"
exit /b