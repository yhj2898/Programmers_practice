def solution(num_list):
    answer = 0
    a=1
    b=0
    for n in num_list:
        a *= n
        b += n
        if a < b**2:
            answer = 1
        else:
            answer = 0
    return answer