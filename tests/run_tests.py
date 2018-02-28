"""
Unit testing for the grabber api
"""

import unittest
import requests


class TestGrabber(unittest.TestCase):
	"""
	Test the grabber api by simulating get/put/delete requests
	"""

	@classmethod
	def setUpClass(cls):
		pass


	def test_get_all(self):
		"""
		Test get all functionality
		"""
		self.fail('Could not get all.')


	def test_get_one(self):
		"""
		Test get one functionality
		"""
		self.fail('Could not get one.')


	def test_create(self):
		"""
		Test put functionality
		"""
		self.fail('Could not create.')


	def test_change(self):
		"""
		Test put on a specific object
		"""
		self.fail('Could not change.')


	def test_delete_all(self):
		"""
		Test delete functionality
		"""
		self.fail('Could not delete all.')


	def test_delete_one(self):
		"""
		Test delete functionality
		"""
		self.fail('Could not delete one.')


def main():
	unittest.main()


if __name__ == '__main__':
	main()
