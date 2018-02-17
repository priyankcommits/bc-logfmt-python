echo "[pypi]" > ~/.pypirc
echo "repository: https://upload.pypi.org/legacy/">> ~/.pypirc
echo "username: $PYPI_USER">> ~/.pypirc
echo "password: $PYPI_PASSWORD">> ~/.pypirc
pip install -r wercker-requirements.txt
python setup.py sdist
twine upload -u $PYPI_USER -p $PYPI_PASSWORD dist/*
