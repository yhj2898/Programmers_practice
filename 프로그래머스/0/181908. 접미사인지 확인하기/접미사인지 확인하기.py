def solution(my_string, is_suffix):
    answer = 0
    word = []
    for i in range(len(my_string)):
        word.append(my_string[i:])
        if is_suffix in word:
            answer = 1
        else:
            answer = 0
    return answer