# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: failing to properly handle exceptions in the `main` function when dealing with asynchronous operations. The example uses `http` to fetch data from an API, but the error handling is incomplete.  This can result in unexpected crashes or silent failures.

The `bug.dart` file contains the flawed code. The `bugSolution.dart` file provides the corrected version.

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart`.  Observe that if the API request fails, the error is printed, but the application does not gracefully terminate. This is sub-optimal as it could leave the UI in a bad state, for example.
3. Run `bugSolution.dart`.  This corrected version ensures that exceptions are properly caught and handled in the `main` function.

## Solution
The solution involves properly catching and handling exceptions in the `main` function's `try...catch` block, ensuring that exceptions are addressed before the application finishes.