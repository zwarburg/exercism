import math
class ComplexNumber(object):
    def __init__(self, real, imaginary):
        self.real = real
        self.imaginary = imaginary

    def __add__(self, other):
        return ComplexNumber(self.real + other.real, self.imaginary + other.imaginary)

    def __mul__(self, other):
        r = (self.real * other.real) - (self.imaginary * other.imaginary)
        i = (self.real * other.imaginary) + (other.real * self.imaginary)
        return ComplexNumber(r, i)


    def __sub__(self, other):
        return ComplexNumber(self.real - other.real, self.imaginary - other.imaginary)

    def __truediv__(self, other):
        r = ((self.real * other.real) + (self.imaginary * other.imaginary))/(other.real**2 + other.imaginary**2)
        i = ((self.imaginary * other.real) - (self.real * other.imaginary))/(other.real**2 + other.imaginary**2)
        return ComplexNumber(r, i)


    def __abs__(self):
        return math.sqrt((self.real ** 2) + (self.imaginary ** 2))

    def __eq__(self, other):
        return self.real == other.real and self.imaginary == other.imaginary

    def __repr__(self):
        return "{} + {}i".format(self.real, self.imaginary)


    def conjugate(self):
        return ComplexNumber(self.real, -self.imaginary)

    def exp(self):
        return ComplexNumber(
            round(math.e ** (self.real) * math.cos(self.imaginary), 15),
            round(math.sin(self.imaginary), 15))

