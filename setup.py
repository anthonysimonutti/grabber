#~/usr/bin/env python
from __future__ import absolute_import

import os

from setuptools import setup, find_packages

BASE_DIR = os.path.abspath(os.path.dirname(__file__))

ABOUT = {}
with open(os.path.join(BASE_DIR, "grabber", "__about__.py")) as f:
	exec(f.read(), ABOUT)

setup(
	name=ABOUT['__title__'],
	version=ABOUT['__version__'],
	description=ABOUT['__summary__'],
	url='https://github.com/anthonysimonutti/grabber',
	packages=find_packages(),
	dependency_links=[],
	install_requires=[],
	entry_points={
		'console_scripts': [
			'grabber = grabber.run_grabber:main'
		]
	},
	include_package_data=True,
)
