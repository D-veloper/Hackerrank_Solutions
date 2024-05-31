if __name__ == '__main__':
    records = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        record = [name, score]
        records.append(record)

    # sort the records by grades in descending order
    # first grade is lowest
    # second lowest is the first grade lower than the first grade
    # create a list of people whose scores are second lowest and sort alphabetically

    sorted_records = sorted(records, key=lambda records: records[1], reverse=False)

    first_lowest = sorted_records[0][1]
    second_lowest = 0
    count = 0

    second_lowest_grade_students = []

    for record in sorted_records:
        if record[1] > first_lowest:
            count += 1
            if count == 1:
                second_lowest = record[1]
            if record[1] == second_lowest:
                second_lowest_grade_students.append(record)

    # slgs stands for second lowest grade students
    sorted_slgs = sorted(second_lowest_grade_students,
                         key=lambda second_lowest_grade_students: second_lowest_grade_students[0], reverse=False)

    for record in sorted_slgs:
        print(record[0])






