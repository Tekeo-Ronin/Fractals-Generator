# Fraktal generator

![fractals](/outputFiles/set.jpg)

This project is a simple utility for generating fractals based on the feedback function. It allows you to create fractal images using various algorithms and parameters.

## Requirements

To use this project you will need:

* [Octave](https://octave.org/)

## Installation

1. Clone the repository:

```bash
    git clone https://github.com/Tekeo-Ronin/Fractal-Generator.git
```

2. Go to the folder with the project:

```bash
    cd Fractal-Generator
```

3. Start Octave by running the command:

```bash
    octave
```

4. At the Octave command line, run the `main.m` script to start the fractal generator:

```bash
    main.m
```

## More details

### Mandelbrot set

* A nested `for` loop is used to iterate over each point on the \( (x, y) \) plane.
* For each point, an iterative process is performed using a `for` loop, computing the value of \( Z \) according to the formula \( Z_{n+1} = Z_{n}^2 + c \).
* It checks whether the modulus of the obtained value of \( Z \) exceeds 2. If not, the point is considered part of the Mandelbrot set.
* The number of iterations required for divergence is used to determine the color of each point.

### Barnsley fern

* A `for` loop is used to compute the coordinates of each fern point.
* A random rule is chosen, and the computation of the new point's position is based on this rule.
* The process is repeated several times (as determined by the number of iterations) to generate enough points for visualizing the fern.

### Julia set

* Similar to the Mandelbrot set, a `for` loop is used to iteratively compute the values of points on the \( (x, y) \) plane.
* Instead of the point \( c \) being dependent on the coordinates of points on the plane, it is fixed.
* The computation of \( Z \) values follows the formula \( Z_{n+1} = Z_{n}^2 + c \).
* Each point is considered part of the Julia set if the modulus of the obtained value of \( Z \) does not exceed 2 after a certain number of iterations.