# Automated CV Pipeline

This repository contains the source code for my resume, built using a fully automated, data-driven pipeline. 

Instead of manually formatting a Word document every time I want to add a project, I separate the content from the formatting. 

## Architecture

1. **`data.json`**: Contains all my personal information, education, skills, projects, and activities.
2. **`cv.typ`**: A template written in [Typst](https://typst.app/) (a modern alternative to LaTeX) that defines the visual layout and uses `#for` loops to iterate over the JSON data.
3. **`build.py`**: A Python script that automates the compilation process.
4. **GitHub Actions**: A CI/CD workflow that automatically compiles the Typst file to a PDF and commits it to the repository on every push.

## Workflow

Whenever I want to update my resume, I simply edit `data.json` and push the changes. GitHub Actions automatically triggers, compiles the new PDF, and updates the repository. 

```text
data.json  ──>  cv.typ  ──>  build.py  ──>  Irina_Cojocari_CV.pdf
