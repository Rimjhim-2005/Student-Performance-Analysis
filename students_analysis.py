import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("students.csv")

df["average_marks"] = (df["math"] + df["science"] + df["programming"]) / 3

print("\n--- Student Data ---")
print(df)

top_student = df.loc[df["average_marks"].idxmax()]
print("\nTop Performer:")
print(top_student)

dept_avg = df.groupby("department")["average_marks"].mean()
print("\nDepartment-wise Average:")
print(dept_avg)

# Attendance vs Marks correlation
correlation = df["attendance"].corr(df["average_marks"])
print("\nCorrelation between Attendance and Marks:", correlation)


# 1. Bar Chart → Student average marks
plt.figure()
plt.bar(df["name"], df["average_marks"])
plt.title("Student Average Marks")
plt.xlabel("Students")
plt.ylabel("Average Marks")
plt.show()

# 2. Column Chart → Department performance
plt.figure()
dept_avg.plot(kind='bar')
plt.title("Department Performance")
plt.xlabel("Department")
plt.ylabel("Average Marks")
plt.show()

# 3. Scatter Plot → Attendance vs Marks
plt.figure()
plt.scatter(df["attendance"], df["average_marks"])
plt.title("Attendance vs Marks")
plt.xlabel("Attendance")
plt.ylabel("Average Marks")
plt.show()
