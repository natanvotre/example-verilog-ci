# Example of CI verilog verification

Test using two steps CI for linting and testing the code using:

- Dockerfile 
  - Using as a good practice of programming, maintaining a clear environment and making easily the package tracking;
  - Using for circle-ci, setting up the environment needs.
- Makefile
  - Organizing the scripts in just one place (TODO: transfer to python argparse, together with the script files)
- Python
  - Using Python for the **test tooling**, pretty useful for unit testing and functional verification;
  - Library: Cocotb
- Icarus Verilog
  - Using IVerilog for linting the code and also running the tests.
