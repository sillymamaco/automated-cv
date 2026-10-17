import subprocess
import sys

def build_cv():
    print("Compiling Typst CV...")
    try:
        subprocess.run(["typst", "compile", "cv.typ", "Irina_Cojocari_CV.pdf"], check=True)
        print("Success! CV compiled to Irina_Cojocari_CV.pdf")
    except subprocess.CalledProcessError:
        print("Error compiling Typst file.")
        sys.exit(1)
    except FileNotFoundError:
        print("Typst is not installed.")
        sys.exit(1)

if __name__ == "__main__":
    build_cv()
