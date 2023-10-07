str1 = input("Enter your String: ")
Main_string = ""
sub_string = ""

for s in range(0, len(str1)):
    if s < 2:
        Main_string = Main_string + str1[s]
    else:
        sub_string = sub_string + str1[s]

# Check if ">" is present in Main_string
if ">" not in Main_string:
    print("Not possible")
else:
    substrings = []
    single_char = ""

    for char in sub_string:
        if char != "|":
            single_char = single_char + char
        else:
            substrings.append(single_char)
            single_char = ""

    if single_char:
        substrings.append(single_char)

    first_char_of_main = Main_string[0]
    first_chars_of_substrings = [substring[0] for substring in substrings]

    if first_char_of_main not in first_chars_of_substrings:
        print("Not Possible")
    else:
        withe = []
        with_out = []

        for single_chars in substrings:
            if Main_string[0] in single_chars:
                withe.append(single_chars)
            else:
                with_out.append(single_chars)
        value_of_aim = Main_string
        value_of_aim_b = Main_string[0] + "' > "
        value_of_aim_bs = Main_string[0] + "'"

        for s in range(len(with_out)):
            if s != len(with_out) - 1:
                value_of_aim = value_of_aim + with_out[s] + value_of_aim_bs + " | "
            else:
                value_of_aim = value_of_aim + with_out[s] + value_of_aim_bs

        for s in range(0, len(withe)):
            original_string = withe[s]
            char_to_remove = Main_string[0]
            modified_string = original_string.replace(char_to_remove, "")
            value_of_aim_b += modified_string + value_of_aim_bs + " | "

        value_of_aim_b = value_of_aim_b.rstrip(" | ")

        value_of_aim_b += " | ε"

        print(value_of_aim, "\n")
        print(value_of_aim_b, "\n")
