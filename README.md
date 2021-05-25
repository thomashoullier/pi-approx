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
