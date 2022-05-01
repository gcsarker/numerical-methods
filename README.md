# NumericalMethods
This repository contains naive implementation of different numerical methods applied in linear algebraic equations, integration, ordinary differential equations etc. The following methods are implemented.

**For the Numerical Solution of Algebraic Aquations**
1. The Bisection Method
2. The False Position Method
3. The Newton Raphson Method
4. The Secant Method

**For the Numeric Solution of Linear System of Equations**
1. Matrix Inversion Method
2. Gauss Elimination Method
3. Gauss Jordan Method
4. Gauss Seidal Method

**For Numerical Integration**
1. Trapezoidal Rule
2. Simpson 1/3 formula
3. Simpson 3/8 formula

**To Find the Solution of Ordinary Differential Equations**
1. Euler's Method
2. Picard's Method
3. Runge-Kutta Method of Order 2
4. Runge-Kutta Method of Order 4

**For Function Approximation**
1. Taylor Series Expansion

## Installation Step
1. Step-1: Download or clone this repository.
2. Step-2: Open MATLAB and change working directory to the downloaded directory
3. Step-3: Run NumericalMethods.m

## Usage Examples
Run the **NumericalMethods.m** file and when prompted write the method name to use in small letter. To be specific the method name to write for each numerical technique is given in the table.


| Method            | write               | Method            | write               |
| -------------     |:-------------:      | -------------     |:-------------:      |
| Bisection         | 'bisection'         |Trapezoidal Method | 'trapezoidal'       |
| False Position    | 'false position'    |Simpson 1/3 Method | 'simpson13'         |
| Newton Raphson    | 'newton raphson'    |Simpson 3/8 Method | 'simpson38'         |
| Secant            | 'secant'            |Picard's Method    | 'picard'            |
| Matrix Inversion  | 'matrix inverse'    |Euler's Method     | 'euler'             |
| Gauss Elimination | 'gauss elimination' |Runge Kutta Methd of order 2 | 'rk2'     |
| Gauss Jordan      | 'gauss jordan'      |Runge Kutta Method of order 4 | 'rk4'    |
|Gauss Seidal       | 'gauss seidal'      |Taylor Series Method          | 'taylor series' |

### Newton Raphson Method
for example, to find the real root of  ![](https://latex.codecogs.com/svg.latex?x%5E%7B4%7D-11x&plus;8%20%3D0)  near 2.0  using the **Newton Raphson method**, write newton raphson first to select it. and choose the value of necessary parameters prompted to find the solution as shown.

<img src="utility/images/newton_raphson_method.PNG" height = "150">

The final output consists of an iteration table and the solution value. 
<img src ="utility/images/newton_raphson_output.PNG" height = "200">

### Matrix Inversion Method
To find the solution of a linear system of equations using **Matrix Inverse** method, E.g for the following equations,

![](https://latex.codecogs.com/svg.latex?%5Cdpi%7B50%7D%20%5Clarge%202x&plus;4y-6z%20%3D%20-4)

![](https://latex.codecogs.com/svg.latex?%5Cdpi%7B50%7D%20%5Clarge%20x&plus;5y&plus;3z%20%3D%2010)

![](https://latex.codecogs.com/svg.latex?%5Cdpi%7B50%7D%20%5Clarge%20x&plus;3y&plus;2z%20%3D%205)

similarly first write 'matrix inverse' and provide paramteres value such as number of equations, equations etc. and obtain the output for each variable.

<img src = "utility/images/matrix_inverse_method.PNG" height = "150">
<img src = "utility/images/matrix_inverse_output.PNG" height = "100">

### Simpson 3/8 Rule
To find the numerical integration of a function    ![](https://latex.codecogs.com/svg.latex?%5Cinline%20%5Cdpi%7B50%7D%20%5Clarge%20%5Cint_%7B0%7D%5E%7B12%7D%7B%5Cfrac%7B1%7D%7B1&plus;x%5E2%7Ddx%7D)    using Simpsion 3/8 formula, write simpson38 when prompted to choose algorithm and provide required values

<img src = "utility/images/simpson38.PNG" height = "150">
<img src = "utility/images/simpson38_output.PNG" height = "200">

### Runge-Kutta Method or Order Two
The following images are the procedure to find the solution of an ordinary differential equation    ![](https://latex.codecogs.com/svg.latex?%5Cinline%20%5Cdpi%7B50%7D%20%5Clarge%20%5Cfrac%7B%5Cmathrm%7Bd%7D%20y%7D%7B%5Cmathrm%7Bd%7D%20x%7D%3D%5Csin%7By%7D)    using Runge-Kutta method.

<img src = "utility/images/rk2_method.PNG" height = "150">
<img src = "utility/images/rk2_output.PNG" height = "200">


