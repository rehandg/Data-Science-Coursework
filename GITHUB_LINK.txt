# Employee Management System (Basic Version)

# Step 1: Create a dictionary with some sample employees
employees = {
    101: {'name': 'Sabeel', 'age': 22, 'department': 'Cyber', 'salary': 80000},
    102: {'name': 'Rehan', 'age': 21, 'department': 'IT', 'salary': 65000}
}

# Function to add a new employee
def add_employee():
    emp_id = int(input("Enter Employee ID: "))
    if emp_id in employees:
        print("Employee ID already exists. Try again.")
        return
    name = input("Enter Name: ")
    age = int(input("Enter Age: "))
    department = input("Enter Department: ")
    salary = float(input("Enter Salary: "))

    employees[emp_id] = {
        'name': name,
        'age': age,
        'department': department,
        'salary': salary
    }
    print("Employee added successfully!\n")

# Function to view all employees
def view_employees():
    if len(employees) == 0:
        print("No employees available.\n")
    else:
        print("\nEmployee Details:")
        for emp_id, details in employees.items():
            print("ID:", emp_id)
            print("Name:", details['name'])
            print("Age:", details['age'])
            print("Department:", details['department'])
            print("Salary:", details['salary'])
            print("----------------------")
        print()

# Function to search for an employee
def search_employee():
    emp_id = int(input("Enter Employee ID to search: "))
    if emp_id in employees:
        emp = employees[emp_id]
        print("\nEmployee Found!")
        print("Name:", emp['name'])
        print("Age:", emp['age'])
        print("Department:", emp['department'])
        print("Salary:", emp['salary'])
        print()
    else:
        print("Employee not found.\n")

# Main menu
def main_menu():
    while True:
        print("==== Employee Management System ====")
        print("1. Add Employee")
        print("2. View All Employees")
        print("3. Search Employee")
        print("4. Exit")
        choice = input("Enter your choice: ")

        if choice == '1':
            add_employee()
        elif choice == '2':
            view_employees()
        elif choice == '3':
            search_employee()
        elif choice == '4':
            print("Thank you for using the system.")
            break
        else:
            print("Invalid choice. Try again.\n")

# Run the program
main_menu()

