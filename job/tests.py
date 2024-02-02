import unittest
from algorithm import algo
import pickle
from converter import *

class TestDataLoad(unittest.TestCase):
    def test_dataload(self):
        with open(r"testResources/testMetadata", "rb") as input_file:
            raw = pickle.load(input_file)
            per = convertToVector(raw[0][1])
            self.assertEqual(per[0], 1)
            self.assertEqual(per[1], 0)
            self.assertEqual(per[2], 0)
            self.assertEqual(per[3], 1)


class TestAlgorithm(unittest.TestCase):
    def test_simple(self):
        pers1 = [
            1,  # is boy
            0,  # is girl
            0,  # is looking for boys
            1,  # is looking for girls
            0,
            0
        ]
        pers2 = [
            0,  # is boy
            1,  # is girl
            1,  # is looking for boys
            0,  # is looking for girls
            0,
            0
        ]

        match = algo([pers1, pers2])

        self.assertEqual(len(match), 2)
        self.assertEqual(match[0], 1)
        self.assertEqual(match[1], 0)
