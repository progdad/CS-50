import sqlite3

def count_projects_in_each_language():
    # Connect to the database
    connection = sqlite3.connect('favorites.db')
    cursor = connection.cursor()

    # Execute a SELECT query to retrieve language and project counts
    select_query = '''
        SELECT problem, language, COUNT(*) as problem_count
        FROM favorites
        GROUP BY language, problem;
    '''
    cursor.execute(select_query)

    # Fetch all language and project counts
    language_project_counts = cursor.fetchall()

    # Display the counts
    print("Language\tProject\t\tCount")
    for row in language_project_counts:
        print(f"{row[0]}\t\t{row[1]}\t\t{row[2]}")

    # Close the connection
    connection.close()

# Call the function
count_projects_in_each_language()

# The Output:
# 
# Language        Project         Count
# Bulbs           C               5
# Caesar          C               7
# Cash            C               5
# Credit          C               4
# DNA             C               6
# Filter          C               15
# Hello           C               9
# Mario           C               3
# ...
