class Allergies(object):

    def __init__(self, score):
        self.allergies = self.set_allergies(score)

    def is_allergic_to(self, item):
        return item in self.allergies

    def set_allergies(self, score):
        if score < 1:
            return []
        result = []
        values = list(bin(score)[2:].zfill(8)[-8:])
        allergies = ['cats', 'pollen', 'chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'eggs']

        # list(map(lambda bit: (allergies[values.index(bit)] if bit == '1' else None), values))

        for v, allergy in zip(values, allergies):
            if int(v):
                result.append(allergy)
        return result

    @property
    def lst(self):
        return self.allergies

