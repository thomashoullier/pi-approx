# Pi approximation
`pi-approx` packages routines for computing arbitrary precision approximations
of π.

## Usage
### Machin
`machin` computes pi's approximation using the original Machin formula [1].

**machin** *eps* => *pi-approximation* *error-bound*

With:
* `eps`: The error budget for the approximation. Eg. `1/1000` for 3 decimal
  places.
* `pi-approximation`: The result approximated value of pi.
* `error-bound`: An upper bound for `|π - pi-approximation|`

## Dependencies
* `pi-approx`:
  * [`taylor-series`](https://github.com/thomashoullier/taylor-series)
* `pi-approx/test`:
  * [`rove`](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "pi-approx")
```

## References
1. Y. Nishiyama, “Machin’s formula and Pi,” Journal of Osaka University of
   Economics 62(1), 1–8 (2011).
2. J. M. Borwein, P. B. Borwein, and D. H. Bailey, “Ramanujan, Modular
   Equations, and Approximations to Pi or How to Compute One Billion Digits of
   Pi,” The American Mathematical Monthly 96(3), 201–219 (1989).
   https://doi.org/10.1080/00029890.1989.11972169
3. W. H. Press, H. William, S. A. Teukolsky, W. T. Vetterling, A. Saul, and B.
   P. Flannery, Numerical Recipes 3rd Edition: The Art of Scientific Computing
   (Cambridge university press, 2007). **Page 1185**
