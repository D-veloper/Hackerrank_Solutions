if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())

    scores = list(arr)
    max_num = scores[0]
    runner_up = -9999999

    for number in scores:
        if number > max_num:
            max_num = number

    for number in scores:
        if (runner_up <= number and number < max_num):
            runner_up = number

    print(runner_up)
