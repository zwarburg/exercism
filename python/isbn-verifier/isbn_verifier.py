import re
from functools import reduce

class InvalidDigit(Exception):
    def __init__(self):
        pass
        # self.msg = msg
    def __str__(self):
        return repr(self.msg)

def verify(isbn):
    isbn = re.sub('-', '', isbn)
    if len(isbn) != 10:
        return False
    sum = 0
    for index in range(0, 10):
        try:
            sum += convert_value(isbn[index], index) * (10 - index)
        except InvalidDigit:
            return False

    return sum % 11 == 0


def convert_value(val, index):
    if val == 'X':
        if index == 9:
            return 10
        raise InvalidDigit
    elif val in list(map(lambda x: str(x), range(0, 10))):
        return int(val)
    else:
        raise InvalidDigit

