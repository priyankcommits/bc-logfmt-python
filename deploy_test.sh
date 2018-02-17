echo "[pypitest]" > ~/.pypirc
echo "repository: https://testpypi.python.org/pypi">> ~/.pypirc
echo "username: $PYPI_USER">> ~/.pypirc
echo "password: $PYPI_PASSWORD">> ~/.pypirc
pip install -r wercker-requirements.txt
python setup.py sdist
twine upload -u $PYPI_USER -p $PYPI_PASSWORD --repository-url https://test.pypi.org/legacy/ dist/*
