# Install Miniconda and Jupyter

## Install Miniconda

- Go here, download and install:
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe
    
## Install conda packages

- Open Start Menu - > Miniconda Prompt. 
  
  The prompt should start with `(base)` in front.
    
- Create a new environment called `dsp`: 
  
  ```conda create --name dsp python=3.6```

- Switch into the new environment:
  
  ```conda activate dsp```
    
  The prompt should now start with `(dsp)` in front.
    
- Run the following lines, one by one:

  ```conda install -c conda-forge jupyterlab```

  ```conda install -c conda-forge octave_kernel```

  ```pip install matlab_kernel```
  
### Install Matlab engine for Python

Open Matlab and run the folllwing two lines, one by one:

```cd (fullfile(matlabroot,'extern','engines','python'))```

```system('python setup.py build --build-base="C:\Users\student\MatlabPythonEngine" install')```

### How to use Matlab in Jupyter

- Open Start Menu - > Miniconda Prompt. 
- Switch into the `dsp` environment:
  
  ```conda activate dsp```
  
- Start Jupyter lab:
  
  ```jupyter lab```
