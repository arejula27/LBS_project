import os


def search_words_in_file(file_path, words):
    results = []
    with open(file_path, 'r') as file:
        for line_num, line in enumerate(file, 1):
            for word in words:
                if word.lower() in line.lower():
                    results.append((file_path, line_num, line.strip()))
    return results


def search_words_in_directory(directory, words):
    all_results = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            results = search_words_in_file(file_path, words)
            all_results.extend(results)
    return all_results


def main():
    directory = input("Enter the path of the directory to analyze: ")
    if not os.path.isdir(directory):
        print("The entered path is not a valid directory.")
        return

    keywords_file = "keywords.txt"
    if not os.path.isfile(keywords_file):
        print("The 'keywords.txt' file was not found in the directory.")
        return

    with open(keywords_file, 'r') as file:
        words = file.read().splitlines()

    results = search_words_in_directory(directory, words)

    if results:
        for result in results:
            print(f"{result[0]}:{result[1]}    \"{result[2]}\"")
    else:
        print("No matches found.")


if __name__ == "__main__":
    main()
