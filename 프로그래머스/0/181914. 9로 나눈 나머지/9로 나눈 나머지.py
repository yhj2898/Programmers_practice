def solution(number):
    answer = 0
    n=0
    for i in list(number):
        n += int(i)
        answer = n%9
    return answer