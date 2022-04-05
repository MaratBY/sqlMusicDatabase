import psycopg2
from sql_scripts.ddl_script import create_tables
from sql_scripts.drop_script import drop_tables


def execute(query=create_tables):
    try:
        conn = psycopg2.connect(database="<your_db>", user='<your_user>',
                                password='<your_password>', host='127.0.0.1', port='5432')
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


def main():
    choice = int(input("Enter the option:\n1. Create mus_db tables.\n2. Drop mus_db tables.\n"))
    print(choice)
    if choice == 1:
        execute(query=create_tables)
    elif choice == 2:
        execute(query=drop_tables)
    else:
        print("Invalid command provided. Quit...\n")


if __name__ == "__main__":
    main()
