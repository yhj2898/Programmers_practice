def solution(numbers):
    answer = 0
    s=0
    for num in numbers:
        s += num
        answer = s/len(numbers)
    return answer