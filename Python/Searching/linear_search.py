def linear_search(ball, linear):
    for i in range(len(ball)):
        if ball[i] == linear:
            return i
    return -1


arr_ball = ['t', 'u', 't', 'o', 'r', 'i', 'a', 'l']
print(*arr_ball, sep=', ')
x = input("\nFind element: ")
print("Element found at index " + str(linear_search(arr_ball, x)) + " because array is start from zero.")
