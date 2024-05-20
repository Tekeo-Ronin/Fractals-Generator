# Fraktals generator

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
    cd Fractals-Generator
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

* A nested `for` loop is used to iterate over each point on the ![](https://quicklatex.com/cache3/77/ql_3d63939db78c76c3cd85f16ce64d6a77_l3.png) plane.
* For each point, an iterative process is performed using a `for` loop, computing the value of ![](https://quicklatex.com/cache3/00/ql_507eeb1b9a6a7b5ccb1ed0d933ffa100_l3.png) according to the formula ![](https://quicklatex.com/cache3/16/ql_84cfded2d8758dbf79e7a7c795468116_l3.png).

* It checks whether the modulus of the obtained value of ![](https://quicklatex.com/cache3/00/ql_507eeb1b9a6a7b5ccb1ed0d933ffa100_l3.png) exceeds 2. If not, the point is considered part of the Mandelbrot set.
* The number of iterations required for divergence is used to determine the color of each point.

### Barnsley fern

* A `for` loop is used to compute the coordinates of each fern point.
* A random rule is chosen, and the computation of the new point's position is based on this rule.
* The process is repeated several times (as determined by the number of iterations) to generate enough points for visualizing the fern.

### Julia set

* Similar to the Mandelbrot set, a `for` loop is used to iteratively compute the values of points on the 
![](https://quicklatex.com/cache3/77/ql_3d63939db78c76c3cd85f16ce64d6a77_l3.png) plane.
* Instead of the point ![](https://quicklatex.com/cache3/f8/ql_37025cf60876c91e1cfc66822263f8f8_l3.png) being dependent on the coordinates of points on the plane, it is fixed.
* The computation of ![](https://quicklatex.com/cache3/00/ql_507eeb1b9a6a7b5ccb1ed0d933ffa100_l3.png) values follows the formula ![](https://quicklatex.com/cache3/16/ql_84cfded2d8758dbf79e7a7c795468116_l3.png).
* Each point is considered part of the Julia set if the modulus of the obtained value of ![](https://quicklatex.com/cache3/00/ql_507eeb1b9a6a7b5ccb1ed0d933ffa100_l3.png) does not exceed 2 after a certain number of iterations.

## Contributing

Feel free to fork the repository and submit pull requests.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
