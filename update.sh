# Update setup.py version number
nano setup.py # or use your preferred editor to update the version number

# Remove old builds
rm -rf dist build *.egg-info

# Build new distributions
python3 setup.py sdist bdist_wheel

# Upload the new version
python3 -m pip install --upgrade twine
python3 -m twine upload dist/*
