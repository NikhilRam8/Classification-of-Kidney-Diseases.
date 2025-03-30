def is_palindrome(s):
    return s == s[::-1]

# Example usage
word = input("Enter a word: ")
if is_palindrome(word):
    print("It's a palindrome!")
else:
    print("Not a palindrome.")