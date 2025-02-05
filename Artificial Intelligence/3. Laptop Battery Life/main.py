import numpy
import matplotlib.pyplot as plt

"""Original Linear Regression Implementation to predict battery life"""

def predict(x_vals, y_vals, x_test):
    x_mean = numpy.mean(x_vals)
    x_deviation = [x - x_mean for x in x_vals]

    y_mean = numpy.mean(y_vals)
    y_deviation = [y - y_mean for y in y_vals]

    cross_deviation = [x * y_deviation[i] for i, x in enumerate(x_deviation)]

    x_squared_deviation = [numpy.square(x) for x in x_deviation]

    b = numpy.sum(cross_deviation)/numpy.sum(x_squared_deviation)

    a = y_mean - (b * x_mean)

    y_pred = a + (b * x_test)

    return y_pred


x_vals = []  # list to store charging time
y_vals = []  # list to store battery life

# read training data to get our x and y values for training
with open("trainingdata.txt", "r") as filestream:
    for line in filestream:
        current_line = line.split(",")
        x_vals.append(current_line[0])
        y_vals.append(current_line[1])


# convert x and y values from string to float
x_vals = numpy.array(x_vals, dtype=float)
y_vals = numpy.array(y_vals, dtype=float)

x_test = 0.09  # Expected output 0.18

print(predict(x_vals, y_vals, x_test))  # predicts 2.94

"""Linear Regression Implementation is 'incorrect'. Ideally, you plot data first. Let's plot it"""

plt.scatter(x_vals, y_vals)
plt.xlim(0, 10)
plt.ylim(0, 10)
plt.xlabel("Hours Charged")
plt.ylabel("Hours Lasted")
plt.show()

"""The plot shows why regression fails. Because at some point, increased charging time 
has no effect on how long the battery lasts. For the first four hours, charge time and 
battery life have a linear relationship where battery life = 2 * hours charged. 
Past 4 hours of charge, however, battery life is capped at 8 hours."""



