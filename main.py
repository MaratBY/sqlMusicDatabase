import psycopg2
from sql_scripts.pyScripts.ddl_script import create_tables
from sql_scripts.pyScripts.drop_script import drop_tables
from sql_scripts.pyScripts.data_insertion_script import insert_into
import sql_scripts.pyScripts.data_selections as selection
from pprint import pprint


def execute(query=create_tables):
    try:
        conn = psycopg2.connect(database="mus_db", user='tester',
                                password='tester', host='127.0.0.1', port='5432')
        conn.autocommit = True
        if conn.info.status != 1:
            print("Connected to", conn.info.dbname)
            cursor = conn.cursor()
            cursor.execute(query)
            print("Success!")
            conn.close()
        else:
            print("Error while connection establishing. Check the credentials.")
            return None
    except ConnectionError:
        print("Execution failed due bad connection settings.")


def select(selection_query):
    try:
        conn = psycopg2.connect(database="mus_db", user='tester',
                                password='tester', host='127.0.0.1', port='5432')
        conn.autocommit = True
        if conn.info.status != 1:
            print("Connected to", conn.info.dbname)
            cursor = conn.cursor()
            cursor.execute(selection_query)
            records = cursor.fetchall()
            for row in records:
                pprint(row)
            print("Success!")
            conn.close()
        else:
            print("Error while connection establishing. Check the credentials.")
            return None
    except ConnectionError:
        print("Execution failed due bad connection settings.")


def main():
    choice = 0
    while choice != 5:
        choice = int(input("Enter the option:\n1. Create mus_db tables.\n2. Drop mus_db tables.\n3. Insert Data Into "
                           "DB.\n4. Select Data.\n5. Quit\n>>>> "))
        print(choice)
        if choice == 1:
            execute(query=create_tables)
        elif choice == 2:
            execute(query=drop_tables)
        elif choice == 3:
            execute(query=insert_into)
        elif choice == 4:
            back = 0
            while back != 7:
                selections = [selection.selection_one, selection.selection_two, selection.selection_three,
                              selection.selection_four, selection.selection_five, selection.selection_six]
                back = int(input("Choose:\n1.Selection One.\n2.Selection Two.\n3.Selection "
                                 "Three.\n4.Selection Four.\n5.Selection Five\n6.Selection Six\n7.Back\n>>>> "))
                if back != 7:
                    select(selection_query=selections[back-1])
        else:
            print("Invalid command provided. Quit...\n")
    print("Exit...")


if __name__ == "__main__":
    main()
