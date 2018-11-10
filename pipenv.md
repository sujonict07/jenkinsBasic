Pipenv: Python Dev Workflow for Humans  
Install Pipenv in Ubuntu 18.04  

```
$ pip install pipenv
```

*To initialize a Python 3 virtual environment, run
``` 
$ pipenv --three.  
```

*To initialize a Python 2 virtual environment, run 
```
$ pipenv --two.
``` 

shell will spawn a shell with the virtualenv activated. This shell can be deactivated by using exit.

```
$ pipenv shell 
$ exit

```
If you have already cloned repository with pipenv  
use this commands: 


```

$ cd <your_repository>
To check Pipfile  Pipfile.lock  files 
$ ls  
$ pipenv shell 
if Pipfile  Pipfile.lock exists,
$ pipenv install 
otherwise you can install your chooces package.
$ pipenv install <package name>
$ exit

```
