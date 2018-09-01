class Garden(object):
    def __init__(self, diagram, students=['Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Fred', 'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry']):
        self.rows = map(lambda row: list(row), diagram.split())
        self.students = students


    def plants(self, student):
        plants = {'G': 'Grass', 'C': 'Clover', 'R': 'Radishes', 'V': 'Violets'}
        result = []
        index = 2 * self.students.index(student)
        print(index)
        for row in self.rows:
            print(row)
            print(row[index], row[index+1])
            result.append(plants[row[index]])
            result.append(plants[row[index + 1]])
        return result
